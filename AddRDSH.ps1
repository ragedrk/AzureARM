<#
    .SYNOPSIS
        Aggiunge e configura ruolo RDSH
#>

Param (
	[string]$VMname
)

#RDSH
Import-Module RemoteDesktop 
Add-RDServer -Server $VMname -Role RDS-RD-SERVER -ConnectionBroker brk.wg.vecomp.cloud

# Firewall
#netsh advfirewall firewall add rule name="http" dir=in action=allow protocol=TCP localport=80

# Folders
New-Item -ItemType Directory c:\scripts

