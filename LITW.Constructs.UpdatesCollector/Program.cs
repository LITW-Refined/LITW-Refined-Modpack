using Mono.Options;
using Octokit;
using OfficeOpenXml;
using System.Diagnostics.CodeAnalysis;

namespace LITW.Constructs.UpdatesCollector;

internal class Program
{
    private const string GITHUB_URL = "https://github.com/";

    private static readonly GitHubClient github = new(new ProductHeaderValue("LITW Updates Collector"));

    private class Options
    {
#pragma warning disable CS8618

        public string InputExcel { get; private set; }
        public string OutputChangelog { get; private set; }
        public string OutputInstallJson { get; private set; }
        public string OutputUpdatesJson { get; private set; }
        public int ColumnSource { get; private set; }
        public int ColumnVersion { get; private set; }
        public int ColumnName { get; private set; }

#pragma warning restore CS8618

        public void Parse(string[] args)
        {
            new OptionSet
            {
                {
                    "-e|iexcel=",
                    "Defines the path to the Excel file holding all the mods infos.",
                    e => InputExcel = e
                },
                {
                    "-c|ocangelog=",
                    "Defines the path to where the changelog should be written to.",
                    c => OutputChangelog = c
                },
                {
                    "-i|oinstall=",
                    "Defines the path to where the install infos should be written to.",
                    i => OutputInstallJson = i
                },
                {
                    "-u|oupdates=",
                    "Defines the path to where the update infos should be written to.",
                    u => OutputUpdatesJson = u
                },
                {
                    "-l|csource=",
                    "Defines the column number for the mod's source repostiroy link.",
                    l => ColumnSource = Convert.ToInt32(l)
                },
                {
                    "-v|cversion=",
                    "Defines the column number for the mod's version.",
                    v => ColumnVersion= Convert.ToInt32(v)
                },
                {
                    "-n|cname=",
                    "Defines the column number for the mod's name.",
                    n => ColumnName = Convert.ToInt32(n)
                }
            }.Parse(args);
        }
    }

    static Program()
    {
        ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
    }

    static void Main(string[] args)
    {
        var options = new Options();
        options.Parse(args);

        var wbPkg = new ExcelPackage(options.InputExcel);
        var ws = wbPkg.Workbook.Worksheets.First();
        var lastRow = ws.LastValueCell.End.Row;

        for (int cr = 1; cr < lastRow; cr++)
        {
            if (ws.Cells[cr, options.ColumnSource].GetValue<string>() is not string sourceLink
                || !sourceLink.StartsWith(GITHUB_URL, StringComparison.InvariantCultureIgnoreCase)
                || ws.Cells[cr, options.ColumnSource].GetValue<string>() is not string version
                || ws.Cells[cr, options.ColumnSource].GetValue<string>() is not string name)
                continue;

            var sourceLinkParts = sourceLink[GITHUB_URL.Length..].Split('/');
            var repoOwner = sourceLinkParts.ElementAt(0);
            var repoName = sourceLinkParts.ElementAt(1);
            var repoId = github.Repository.Get(repoOwner, repoName).Result.Id;
            var releases = github.Repository.Release.GetAll(repoId).Result;

            foreach (var release in releases)
            {
                if (release.Name.EndsWith("-pre", StringComparison.InvariantCultureIgnoreCase)
                    || release.TagName.EndsWith("-pre", StringComparison.InvariantCultureIgnoreCase))
                    continue;

                var assets = github.Repository.Release.GetAllAssets(repoId, release.Id).Result;
                ReleaseAsset? found = null;

                foreach (var asset in assets)
                {
                    if (!asset.Name.EndsWith(".jar")
                        || asset.Name.EndsWith("-api.jar")
                        || asset.Name.EndsWith("-sources.jar")
                        || asset.Name.EndsWith("-dev.jar"))
                        continue;

                    if (found == null || asset.Name.Contains("nomixin", StringComparison.InvariantCultureIgnoreCase))
                        found = asset;
                }

                if (found != null)
                {
                    // ...
                    break;
                }
            }
        }

        wbPkg.Save();
    }
}
