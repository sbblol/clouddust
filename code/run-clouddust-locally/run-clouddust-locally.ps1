# run-clouddust-locally.ps1
Push-Location $PSScriptRoot

Start-Process powershell -ArgumentList "-NoExit", "-Command", "docker-compose up --build"

# timeout 60 Seconds
$maxWait = 60
$elapsed = 0
$success = $false

Write-Host "⏳ Waiting for http://localhost:4000 to become available..."

while ($elapsed -lt $maxWait) {
    try {
        $response = Invoke-WebRequest -Uri "http://localhost:4000" -UseBasicParsing -TimeoutSec 3
        if ($response.StatusCode -eq 200) {
            $success = $true
            break
        }
    } catch {
        Start-Sleep -Seconds 2
        $elapsed += 2
    }
}

if ($success) {
    Write-Host "✅ Site is up! Opening browser..."
    Start-Process "http://localhost:4000"
} else {
    Write-Warning "⚠️ Site did not respond in $maxWait seconds."
}

Pop-Location

