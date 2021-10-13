$OUpath = 'ou=<>,ou=<>,ou=<>,ou=<>,ou=<>,dc=<>,dc=<>,dc=<>,dc=<>'
$ExportPath = 'C:\<>.csv'
Get-ADComputer -Filter * -SearchBase $OUpath | Select-Object DistinguishedName,DNSHostName,Name | Export-Csv -NoType $ExportPath