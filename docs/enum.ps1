# Assumes you're in the /docs folder
$docsPath = Get-Location
$repoRoot = Resolve-Path "$docsPath\.." | Select-Object -ExpandProperty Path
$mkdocsPath = Join-Path $repoRoot "mkdocs.yml"

# Start of mkdocs config
$header = @"
site_name: SploitHQ Docs
docs_dir: docs

nav:
  - Home: index.md
  - Tools:
"@

# Get all .md files except index.md
$mdFiles = Get-ChildItem -Path $docsPath -Filter *.md | Where-Object { $_.Name -ne "index.md" } | Sort-Object Name

# Build the Tools list
$toolEntries = foreach ($file in $mdFiles) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    "      - ${name}: $($file.Name)"
}

# Theme config
$footer = @"
theme:
  name: readthedocs
"@

# Combine all parts
$fullContent = $header + ($toolEntries -join "`r`n") + "`r`n" + $footer

# Write to mkdocs.yml
Set-Content -Path $mkdocsPath -Value $fullContent -Encoding UTF8

Write-Host "✅ mkdocs.yml created at: $mkdocsPath"