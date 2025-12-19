$Version = "0.0.1"
$ProjectName = "Example Mod"

mkdir package
mkdir temp\Scripts
mkdir temp\Source

mkdir temp\Source\Scripts

Copy-Item -v .\Data\* "temp" -Recurse
Copy-Item -v .\Scripts\*.pex "temp\Scripts\"
Copy-Item -v .\Source\Scripts\*.psc "temp\Source\Scripts\"

Remove-Item "package\$ProjectName v$Version.7z"
C:\"Program Files"\7-Zip\7z.exe a "package\$ProjectName v$Version.7z" .\temp\*