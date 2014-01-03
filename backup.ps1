#To use: ./backup.ps1 vmname path-to-backup 
#ie.: ./backup.ps1 myvm c:\temp\myvmbackup.ovf

param(
     [Parameter(Mandatory)]
     [string]$vm,
     [Parameter(Mandatory)]
     [string]$path
 )

$newName = $vm + "$("{0:yyyyMMddhhmmss}" -f (get-date)).ovf"
iex $("VBoxManage export " + $vm + " --output " + $path + "\" + $newName)