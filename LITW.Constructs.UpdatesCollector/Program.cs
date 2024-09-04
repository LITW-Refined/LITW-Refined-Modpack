using Mono.Options;
using Octokit;
using OfficeOpenXml;
using System.Diagnostics.CodeAnalysis;

namespace LITW.Constructs.UpdatesCollector;

internal class Program
{
    private static readonly GitHubClient github = new(new ProductHeaderValue("LITW Updates Collector"));

    private class Options
    {
#pragma warning disable CS8618

        public string InputExcel { get; private set; }
        public string OutputChangelog { get; private set; }
        public string OutputInstallJson { get; private set; }
        public string OutputUpdatesJson { get; private set; }

#pragma warning restore CS8618

        public void Parse(string[] args)
        {
            new OptionSet
            {
                {
                    "-e|iexcel=",
                    "",
                    e => InputExcel = e
                },
                {
                    "-c|ocangelog=",
                    "",
                    c => OutputChangelog = c
                },
                {
                    "-i|oinstall=",
                    "",
                    i => OutputInstallJson = i
                },
                {
                    "-u|oupdates=",
                    "",
                    u => OutputUpdatesJson = u
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

        // ...

        wbPkg.Save();
    }
}
