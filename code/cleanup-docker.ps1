Write-Host "🛑 Stopping all running containers from ./code/* projects..."

# עצור את כל הקונטיינרים שמריצים פרויקטים מ-local path
$composeFiles = Get-ChildItem -Recurse -Path .\code\ -Filter docker-compose.yml

foreach ($file in $composeFiles) {
    $projectDir = Split-Path -Parent $file.FullName
    Write-Host "`n🧹 Stopping container in: $projectDir"
    docker compose -f $file.FullName -p (Split-Path -Leaf $projectDir) down
}

Write-Host "`n🧼 Docker cleanup options:"
Write-Host "  1. Remove dangling images"
Write-Host "  2. Prune volumes"
Write-Host "  3. Prune everything (⚠️ careful!)"
Write-Host "  4. Skip cleanup"

$choice = Read-Host "Choose cleanup option (1-4)"

switch ($choice) {
    '1' { docker image prune -f }
    '2' { docker volume prune -f }
    '3' { docker system prune -a -f }
    default { Write-Host "🚫 Skipping cleanup." }
}
