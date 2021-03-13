#Mi maquina 1 
az vm show --name maquinacy1 --resource-group cylerian-train

#maquina 2 
az vm show --name maquinacy2 --resource-group cylerian-train

#Star a stopped VM 
az vm start -g cylerian-d -n maquinacy1

#Star a stopped VM 
az vm start -g cylerian-train -n maquinacy2 

#Star all VMs 
az vm start --ids $(az vm list -g cylerian-train --query "[].id" -o tsv)

#Power off VMs in a resource group.
az vm stop --ids $(az vm list -g cylerian-train --query "[].id" -o tsv)

#List all public IPs in a resource group.
az network public-ip list -g cylerian-train

#Get information about a public IP resource.
az network public-ip show -g cylerian-train -n 52.188.48.57


Usados por mi 
az login 
az login --use-device-code
az vm start --ids $(az vm list -g cylerian-train --query "[].id" -o tsv) 
az network public-ip list -g cylerian-train -o json
az vm stop --ids $(az vm list -g cylerian-train --query "[].id" -o tsv) 
az vm deallocate --ids $(az vm list -g cylerian-train --query "[].id" -o tsv) 




Test
az vm show -g cylerian-train -n maquinacy2 -o json

Query filter json 
az vm show -g QueryDemo -n TestVM --query osProfile.linuxConfiguration.ssh.publicKeys -o json

az vm show -g cylerian-train -n maquinacy2 --query storageProfile.imageReference -o json

az network public-ip list -g MyResourceGroup --query "[?dnsSettings.domainNameLabel=='MyLabel']"


