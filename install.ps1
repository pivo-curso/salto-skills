# Instalador das skills do Salto para o Dolar (Windows)
# Uso (PowerShell):  irm https://raw.githubusercontent.com/pivo-curso/salto-skills/main/install.ps1 | iex
$ErrorActionPreference = "Stop"
Write-Host ""
Write-Host "Instalando as skills do Salto para o Dolar..."
$tmp = Join-Path $env:TEMP ("salto-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $tmp | Out-Null
$zip = Join-Path $tmp "salto.zip"
Invoke-WebRequest -Uri "https://github.com/pivo-curso/salto-skills/archive/refs/heads/main.zip" -OutFile $zip
Expand-Archive -Path $zip -DestinationPath $tmp
$skills = Join-Path $env:USERPROFILE ".claude\skills"
New-Item -ItemType Directory -Force -Path $skills | Out-Null
Remove-Item -Recurse -Force (Join-Path $skills "portfolio") -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force (Join-Path $skills "proposta") -ErrorAction SilentlyContinue
Copy-Item -Recurse (Join-Path $tmp "salto-skills-main\plugins\salto\skills\portfolio") (Join-Path $skills "portfolio")
Copy-Item -Recurse (Join-Path $tmp "salto-skills-main\plugins\salto\skills\proposta")  (Join-Path $skills "proposta")
Remove-Item -Recurse -Force $tmp
Write-Host ""
Write-Host "=========================================="
Write-Host "  Instalado com sucesso!"
Write-Host "  Skills: /portfolio e /proposta"
Write-Host "  Agora FECHE e ABRA o Claude Code de novo"
Write-Host "  e teste /portfolio numa conversa nova."
Write-Host "=========================================="
