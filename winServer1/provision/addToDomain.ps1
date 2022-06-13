$username="Missoula\vagrant"
$password=ConvertTo-SecureString -AsPlainText "vagrant" -force
$creds=new-object system.management.automation.pscredential $username,$password

# set DNS Server
Set-DnsClientServerAddress -interfacealias "Ethernet 2" -ServerAddresses ("192.168.56.2")

#Add this computer to the domain
add-computer -DomainName "Missoula.com" -Credential $creds -Server DC -restart
