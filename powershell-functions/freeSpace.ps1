# return the labels and remaining space of each drive, in bytes
Get-CimInstance -Class Win32_LogicalDisk
# return the remaining space of each drive, in MB
Get-CimInstance -Class Win32_LogicalDisk |
  ForEach-Object -Process {($_.FreeSpace)/1MB}
