Write-Host("Shutdown WSL");
wsl --shutdown;

Write-Host("Setup directories")
wsl -u root -e sh scripts/linux/setup-directories.sh

Write-Host("WSL start docker service");
wsl -u root -e sudo service docker start;

Write-Host("Up docker compose");
wsl -u root -e docker compose up -d;
