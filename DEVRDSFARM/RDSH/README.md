# Aggiunta HOST RDSH alla FARM
<br>
# DESCRIZIONE:
Creazione della VM che farà da RDSH per il cliente e aggiunta della stessa al Dominio: wg.vecomp.cloud. 
Al termine è necessario verificare che sia stata spostata nella OU corretta e impostare indirizzo ip statico (dal Portale, non dalla VM).
<br>
# UTILIZZO
<i>Parte della VM:</i>
<br>
Impostare il nome dell'Availability Group: as-nomecliente.<br>
Impostare il nome della VM: nomecliente-rdsh0.<br>
Impostare utenza e pwd dell'amministratore locale.<br>
Impostare lo Storage Account: savcpssd** sono SSD, savcpmag** sono Magnetici.<br>
Impostare la Subnet di destinazione della VM: sub-nomecliente.<br>
Lasciare invariato VNET Resource Group.<br>
Lasciare invariato VNET name.<br>
Impostare le Dimensioni della VM: verifica sul preventivo cosa è stato venduto al cliente.<br>
Impostare la versione di OS: lasciate Windows Server 2016 Datacenter come predefinito se non specificato diversamente (no docker e no nano).<br>
<br>
<i>Parte Dominio:</i>
<br>
Impostare utenza e pwd di un utente con poteri di JOIN al Dominio.<br>
Lasciare invariato l'FQDN del Dominio.<br>
Specificare l'OU in cui spostare il server al termine della Join al dominio, va creata prima dell'esecuzione di questo script.<br>
Se lasciato BLANK finisce nella OU default: Computers <b>E VA SPOSTATO MANUALMENTE</b><br>
<br>
<br>
OLD
<a href="https://azuredeploy.net/?repository=https://github.com/ragedrk/AzureARM/edit/master/DEVRDSFARM/RDSH" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

NEW
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https://raw.githubusercontent.com/ragedrk/AzureARM/master/DEVRDSFARM/RDSH/azuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/ragedrk/AzureARM/master/DEVRDSFARM/RDSH/azuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
