:: Used for unzipping .tar.gz archives and extracting only CSV

@echo %off
setlocal enabledelayedexpansion

for /r %%f in (*.tar.gz) do (
	D:\7za\7za.exe x %%f -so | D:\7za\7za.exe x -aoa -si -ttar "-o%cd%" *.csv -r
	echo ========= Extracted CSV from %%f =========
)
