@echo off
ECHO What Directory would you like to empty?
ECHO Current path: %cd%
SET /p UserInputPath=Input relative path to directory:

IF NOT EXIST %cd%\%UserInputPath% (
	ECHO Folder at: %cd%\%UserInputPath% does not exist.
) ELSE IF EXIST %cd%\"empty" (
	ECHO Folder %cd%\empty already exists, canot create temp empty folder.
) ELSE (
	ECHO Created empty temp folder at %cd%\empty
	mkdir empty
	ECHO Started emptying %cd%\%UserInputPath%
	ROBOCOPY /MIR empty %cd%\%UserInputPath% > NUL
	ECHO Proces finished, removing %cd%\%UserInputPath% and temp empty folder.
	RMDIR "%cd%\%UserInputPath%"
	RMDIR empty
	ECHO Done.
)
PAUSE