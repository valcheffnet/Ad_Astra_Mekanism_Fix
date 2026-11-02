param([string]$Version = "1.0.1")

Add-Type -AssemblyName System.IO.Compression, System.IO.Compression.FileSystem

$src = Join-Path $PSScriptRoot "src"
$jar = Join-Path $PSScriptRoot "Ad_Astra_Mekanism_Fix-$Version.jar"
if (Test-Path $jar) { Remove-Item $jar }

$fs = [IO.File]::Open($jar, 'CreateNew')
$zip = New-Object IO.Compression.ZipArchive($fs, [IO.Compression.ZipArchiveMode]::Create)
Get-ChildItem $src -Recurse -File | ForEach-Object {
    $name = $_.FullName.Substring($src.Length + 1).Replace('\', '/')
    [IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $name) | Out-Null
}
$zip.Dispose()
$fs.Dispose()

Write-Output $jar
