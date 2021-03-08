# determine the size (in MB) of a directory and subdirectory contents

"{0} MB" -f ((Get-ChildItem C:\users\ -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
