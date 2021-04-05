
$ErrorActionPreference = "silentlycontinue" 

Function Test-CommandNotExists {
	Param ($Command)
	$OldPreference = $ErrorActionPreference
	$ErrorActionPreference = 'stop'
	Try {
		If (Get-Command $Command) {
			Return $False
		}
	}
	Catch {		
		Return $True
	}
	Finally {
		$ErrorActionPreference = $OldPreference
	}
} 

If (Test-CommandNotExists scoop) {
	Write-Host "Get scoop..."
	Set-ExecutionPolicy RemoteSigned -scope CurrentUser
	Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')	
}

If (Test-CommandNotExists make) {
	Write-Host "Install Make ignoted by Docker..."
	scoop bucket add javanile https://github.com/javanile/scoop-bucket.git
	scoop update
	scoop install make.bat
}

Write-Host "`r`n>>> Make is ready.`r`n"
