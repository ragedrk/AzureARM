# Aggiunta HOST RDSH alla FARM
# Bellotti 02/03/2017



DESCRIZIONE:
Creazione della VM che farà da RDSH per il cliente e aggiunta della stessa al Dominio: wg.vecomp.cloud. 
Al termine è necessario verificare che sia stata spostata nella OU corretta e impostare indirizzo ip statico (dal Portale, non dalla VM).

UTILIZZO
Parte della VM:
Impostare il nome dell'Availability Group: as-nomecliente.
Impostare il nome della VM: nomecliente-rdsh0.
Impostare utenza e pwd dell'amministratore locale.
Impostare lo Storage Account: savcpssd** sono SSD, savcpmag** sono Magnetici.
Impostare la Subnet di destinazione della VM: sub-nomecliente.
Lasciare invariato VNET Resource Group.
Lasciare invariato VNET name.
Impostare le Dimensioni della VM: verifica sul preventivo cosa è stato venduto al cliente.
Impostare la versione di OS: lasciate Windows Server 2016 Datacenter come predefinito se non specificato diversamente (no docker e no nano).
Parte Dominio:
Impostare utenza e pwd di un utente con poteri di JOIN al Dominio.
Lasciare invariato l'FQDN del Dominio.
Specificare l'OU in cui spostare il server al termine della Join al dominio, va creata prima dell'esecuzione di questo script.
Se lasciato BLANK finisce nella OU default: Computers E VA SPOSTATO MANUALMENTE


<a href="https://azuredeploy.net/?repository=https://github.com/user/repo" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>