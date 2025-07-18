$ENV:STARSHIP_CACHE  = "$HOME\AppData\Local\Temp"
$ENV:STARSHIP_CONFIG = "$HOME\Repositories\dotfiles\starship\starship.toml"

Invoke-Expression (&starship init powershell)

Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons


Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-Alias code code-insiders