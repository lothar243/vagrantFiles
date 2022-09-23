# Install winget from the Microsoft store (They call it "App Installer")

# Use winget to install Powershell 7
    winget search powershell
    winget install --id microsoft.powershell --source winget

# Install chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# from a privileged powershell
    choco install git
    choco install chrome
    choco install firefox
    choco install notepad3
    choco install virtualbox
    choco install vagrant

# Vagrantfile for Dockerbox:
    Vagrant.configure("2") do |config|
      config.vm.box = "phusion/ubuntu-14.04-amd64"
    end

# Labtainer
 * For use on a docker box: https://github.com/mfthomps/Labtainers/releases/latest/download/labtainer.tar
