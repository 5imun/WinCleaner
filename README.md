# WinCleaner
Simple to use and fast way to delete folders that contain a lot of files like node-modules for Windows OS.
# Basic usage
Lets say that you have `Projects`folder with all your projects and `WinCleaner.bat` inside, and you want to remove **node modules** in `Projects/Project_1/node_modules` without wasting too much time.
```
├── Projects
│   ├── WinCleaner.bat
│   ├── Project_1
│   │   ├── node_moduels
│   │   │   ├──...
│   │   │   ├──...
│   │   ├── app.js
│   │   ├── index.js
│   │   └──...
```
To delete `node_modules` just run WinCleaner.bat and input relativ path to `Project_1/node_modules` and pres **_Enter_**.
Selected folder will be deleted in short time:
```
What Directory would you like to empty?
Current path: C:\Users\5mun\Projects
Input relative path to directory: Project1/node_modules
Created empty temp folder at C:\Users\5mun\Projects\empty
Started emptying C:\Users\5mun\Projects\Project1/node_modules
Proces finished, removing C:\Users\5mun\Projects\Project1/node_modules and temp empty folder.
Done.
Press any key to continue . . .
```