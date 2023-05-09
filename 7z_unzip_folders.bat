:: Used for unzipping .tar.gz archives into seperate folders

@echo %off
setlocal enabledelayedexpansion

for /r %%f in (*.tar.gz) do (
	set outname=%%f
	D:\7za\7za.exe x %%f -so | D:\7za\7za.exe x -aoa -si -ttar -o!outname:~0,-7!
	echo ====== Extracted %%f to !outname:~0,-7! ======
)
