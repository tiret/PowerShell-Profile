# aliases
New-Alias -Name emacs -Value "C:\emacs\bin\runemacs.exe"
New-Alias -Name gh -Value Get-Help
New-Alias -Name ss -Value Select-String
New-Alias -Name new -Value New-Object
New-Alias -Name tp -Value Test-Path

# python aliases
New-Alias -Name pypip -Value "C:\pypy\bin\pip.exe"

# paths
$skrypty = "C:\Users\Bartosz\skrypty"
$dotnet = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319"
$fsharp = "C:\Program Files (x86)\Microsoft SDKs\F#\3.1\Framework\v4.0"
$emacs_home = "C:\Users\Bartosz\.emacs.d"

# prompt customization
function prompt {
  write-host ((get-location).path +">") -nonewline -foregroundcolor DarkCyan
  if ($nestedpromptlevel -ge 1) { write-host '>>' -nonewline -foregroundcolor DarkCyan}
  return " "
}

# convenience functions
function ql {$args}

if ($host.Name -eq 'ConsoleHost') {
    Import-Module PSReadline
	Set-PSReadlineOption -EditMode Emacs
}

$env:path += ";c:\Git\bin"

# Load posh-git example profile
. 'C:\Users\Bartosz\repos\posh-git\profile.example.ps1'

