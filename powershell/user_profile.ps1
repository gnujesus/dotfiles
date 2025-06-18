# Install-Module posh-git -Scope CurrentUser -Force
# Install-Module oh-my-posh -Scope CurrentUser -Force
# Install-Module -Name Terminal-Icons -Repository PSGallery -Force
# Install-Module -Name z -Force
# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# Install-Module -Name PSFzf -Scope CurrentUser -Force

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$omp_config = Join-Path $PSScriptRoot ".\gnu.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function AcceptSuggestion

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias -Name v -Value nvim
Set-Alias ll ls
Set-Alias g git
Function ga {git add @Args}
Function gs {git status}
Function gcmsg {git commit -m @Args}
Function gp {git push @Args}
Function e {explorer.exe @Args}
Set-Alias grep findstr

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
