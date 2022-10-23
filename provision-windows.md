# Debloat (From Chris Titus Tech) - go to tweaks and select desktop
``` powershell
irm christitus.com/win | iex
```

# Install winget from the Microsoft store (They call it "App Installer")

# Use winget to install Powershell 7
    winget search powershell
    winget install --id microsoft.powershell --source winget

# Install chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install editing tools
    choco install notepad3 git -y

# install web browsers
    choco install googlechrome firefox SetDefaultBrowser -y
    SetDefaultBrowser HKLM "Google Chrome"

# install virtualization tools
    choco install virtualbox vmware-workstation-player vagrant -y

# install vpn
    choco install openconnect-gui -y

# show hidden files.
Set-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -Value 1

# show protected operating system files.
Set-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSuperHidden -Value 1

# show file extensions.
Set-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -Value 0

# hide the search button.
Set-ItemProperty -Path HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchboxTaskbarMode -Value 0

# hide the task view button.
Set-ItemProperty -Path HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -Value 0

# never combine the taskbar buttons.
# possibe values:
#   0: always combine and hide labels (default)
#   1: combine when taskbar is full
#   2: never combine
Set-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarGlomLevel -Value 2

# remove unneeded desktop.ini files.
Remove-Item -Force "$env:USERPROFILE\Desktop\desktop.ini"
Remove-Item -Force "$env:PUBLIC\Desktop\desktop.ini"

# set default Explorer location to This PC.
Set-ItemProperty -Path HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1

# display full path in the title bar.
New-Item -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState -Force `
    | New-ItemProperty -Name FullPath -Value 1 -PropertyType DWORD `
    | Out-Null

# Disable animations
\# Go to Control Panel -> Search for animations -> Turn off unnecessary animations
