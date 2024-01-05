# Run Automated Tests
# REQUIRES: GCLI, JKI Caraya Test Framework.

[CmdletBinding()]
param (
    [Parameter(HelpMessage = "LabVIEW version to use")]
    [string]
    $LabVIEWVersion = 2020
    ,
    [Parameter(HelpMessage = "Timeout in seconds")]
    [string]
    $Timeout = 180
    ,
    [Parameter(HelpMessage = "Path to GCLI operations")]
    [string]
    $GCLIDir = "$((Get-Item $PSScriptRoot).Parent.FullName + '\GCLI')"
    ,
    [Parameter(Mandatory = $true,
        HelpMessage = "Path to test suite to run")]
    [string]
    $TestSuite
    ,
    [Parameter(Mandatory = $true,
        HelpMessage = "Path to generated report")]
    [string]
    $ReportPath
    ,
    [Parameter(Mandatory = $false,
        HelpMessage = "Verbose")]
    [string]
    $V
    ,
    [Parameter(Mandatory = $false,
        HelpMessage = "Timeout")]
    [string]
    $TestTimeout
)

g-cli `
    --lv-ver $LabVIEWVersion `
    --x64 `
    --verbose `
    --timeout $([int]$Timeout*1000) `
    "$GCLIDir\RunTestSuite.vi" `
    -- `
    -vi $TestSuite `
    -r $ReportPath `
    -v $V `
    -t $TestTimeout

# Pass any errors through
if(!$?){ Exit $LASTEXITCODE }