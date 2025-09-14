# restructure_and_commit.ps1
# Moves current top-level files into a single folder named 'build_chatbot_for_your_data'
# Usage: run from repository root in PowerShell: .\restructure_and_commit.ps1

param(
    [string]$TopFolderName = 'build_chatbot_for_your_data',
    [string]$CommitMessage = 'Restructure: place project files inside top-level folder'
)

Write-Host "Current path: $(Get-Location)"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "git is not installed or not in PATH. Install Git for Windows and retry."
    exit 2
}

# Create the target folder if missing
if (-not (Test-Path $TopFolderName)) { New-Item -ItemType Directory -Path $TopFolderName | Out-Null; Write-Host "Created folder: $TopFolderName" }

# Move everything except .git and the target folder itself
$items = Get-ChildItem -Force | Where-Object { $_.Name -ne '.git' -and $_.Name -ne $TopFolderName }
foreach ($it in $items) {
    Write-Host "Moving: $($it.Name) -> $TopFolderName\$($it.Name)"
    Move-Item -Force -Path $it.FullName -Destination (Join-Path $TopFolderName $it.Name)
}

Write-Host "All items moved. Now staging and committing changes."
git add .
$status = git status --porcelain
if ($status) { git commit -m $CommitMessage } else { Write-Host "No changes to commit after move." }

Write-Host "Restructure complete. Review and push as needed."
