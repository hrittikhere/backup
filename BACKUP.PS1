Class DirToBackup #DIRECTORY TO BACKUP
{
    [String]$path
    DirToBackup([String]$path) {
      $this.path = $path
    }
}
$pathFromPrefix = "B:\"
$pathToPrefix = "F:\Backup\"
Write-Output " _____         _          _  _                                                                 
/  ___|       | |                     (_)| |                                                                
\ `--.  _   _ | |__   ___   ___  _ __  _ | |__    ___                                                       
 `--. \| | | || '_ \ / __| / __|| '__|| || '_ \  / _ \                                                      
/\__/ /| |_| || |_) |\__ \| (__ | |   | || |_) ||  __/                                                      
\____/  \__,_||_.__/ |___/ \___||_|   |_||_.__/  \___|                                                      
                                                                                                            
                                                                                                            
 _   _ ______  _____  _____  _____  _____  _   __    _____ __   ________  _       ___   _____  _   _  _____ 
| | | || ___ \|_   _||_   _||_   _||_   _|| | / /   |  ___|\ \ / /| ___ \| |     / _ \ |_   _|| \ | |/  ___|
| |_| || |_/ /  | |    | |    | |    | |  | |/ /    | |__   \ V / | |_/ /| |    / /_\ \  | |  |  \| |\ `--. 
|  _  ||    /   | |    | |    | |    | |  |    \    |  __|  /   \ |  __/ | |    |  _  |  | |  | . ` | `--. \
| | | || |\ \  _| |_   | |    | |   _| |_ | |\  \   | |___ / /^\ \| |    | |____| | | | _| |_ | |\  |/\__/ /
\_| |_/\_| \_| \___/   \_/    \_/   \___/ \_| \_/   \____/ \/   \/\_|    \_____/\_| |_/ \___/ \_| \_/\____/ 
                                                                                                            
                                                                                                            
______  _____ ______  ___  ___ _____ ______  _____                                                          
|  ___||  _  || ___ \ |  \/  ||  _  || ___ \|  ___|                                                         
| |_   | | | || |_/ / | .  . || | | || |_/ /| |__                                                           
|  _|  | | | ||    /  | |\/| || | | ||    / |  __|                                                          
| |    \ \_/ /| |\ \  | |  | |\ \_/ /| |\ \ | |___                                                          
\_|     \___/ \_| \_|  \_|  |_/ \___/ \_| \_|\____/                                                          
                                                                                                            
"
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
for(($i = 1);$i -le 10;$i++){
Write-Output "."}
for(($i = 1);$i -le 3;$i++){
Write-Output "**Task Completed.....Subscribe to Hrittik Explains for more Videos like this**"}
for(($i = 1);$i -le 10;$i++){
Write-Output "."}
for(($i = 1);$i -le 30000000;$i++){}
start 'https://www.youtube.com/channel/UC1Hcs44hqebvjvTeJuVEi2A?sub_confirmation=1'
pause
