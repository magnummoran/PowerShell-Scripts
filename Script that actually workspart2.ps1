Get-Content U:\PowershellScriptFolder\Folder\users1.txt |
	Foreach-Object {Add-ADGroupMember -Identity NL_SG_Insurance_Matrix_RO -Members $_}
#This script gets the content from file and then adds each object in the file to the security group#