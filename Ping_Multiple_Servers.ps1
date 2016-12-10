#### Provide the computer name in $computername variable


$ServerName = "LocalHost","192.168.1.1","192.168.1.2","8.8.8.8" 

##### Script Starts Here ###### 

foreach ($Server in $ServerName) {

		if (test-Connection -ComputerName $Server -Count 2 -Quiet ) { 
		
			write-Host "$Server is alive and Pinging " -ForegroundColor Green
		
					} else
					
					{ Write-Warning "$Server seems dead not pinging"
			
					}	
		
}


########## end of script #######################