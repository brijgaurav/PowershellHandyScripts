$User = "domain\usernmae"
$PWord = "password" | ConvertTo-SecureString -AsPlainText -Force
//Or $Credential = Get-Credential -Message "Enter Credentials here: "
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
$Session = New-PSSession -ComputerName "ip or hostname" -Credential $Credential
Enter-PSSession $Session
