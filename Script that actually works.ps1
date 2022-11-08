Get-Content U:\WINDOWS\users.txt | ForEach-Object {
  $mail = $_
  $user = Get-ADUser -LDAPFilter "(mail=$mail)"
  if ( $user ) {
    $sAMAccountName = $user.sAMAccountName
  }
  else {
    $sAMAccountName = $null
  }
  [PSCustomObject] @{
    "sAMAccountName" = $sAMAccountName
  }
} | Export-Csv U:\WINDOWS\Folder\users1.txt -NoTypeInformation
#This script takes the text file, grabs the emails from the file and then creates a files that returns email with login ID 09/4/2020#