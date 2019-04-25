### Tested on Windows 10 ###
Enable-ComputerRestore -Drive "C:\"
cmd.exe /c "Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "BlueBird Restore Point", 100, 12"