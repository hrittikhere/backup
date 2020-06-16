Class DirToBackup #DIRECTORY TO BACKUP
{
    [String]$path
    DirToBackup([String]$path) {
      $this.path = $path
    }
}
$pathFromPrefix = "B:\"
$pathToPrefix = "F:\Backup\"
Write-Output "Plug external disk drive. It should be visible as F drive"
pause
$dirsToBackup = @(
    New-Object DirToBackup "" #add folders name in bracket which you wanna backup
    New-Object DirToBackup ""
    New-Object DirToBackup ""
    New-Object DirToBackup ""
    New-Object DirToBackup ""
    New-Object DirToBackup ""
)
$dirsToBackup | ForEach-Object {
    mkdir -Path $($pathToPrefix + $_.path) -Force
    xcopy $($pathFromPrefix + $_.path) $($pathToPrefix + $_.path) /D /S /Y /H 
}
pause
