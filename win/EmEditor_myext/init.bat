set name=EmEditor15.8.4_x64
set now=%~dp0
set emeditor_root=%now%..\%name%
@rem mklink /d C:\Users\zhujianmin\AppData\Local\Programs\EmEditor %emeditor_root%

@rem rd /q     %emeditor_root%\m
mklink /d %emeditor_root%\m  %now%\m

@rem rd /q     %emeditor_root%\myjsee 
mklink /d %emeditor_root%\myjsee  %now%\myjsee

@rem rd /q     %emeditor_root%\zen_coding 
mklink /d %emeditor_root%\zen_coding %now%\zen_coding

@rem del /q    %emeditor_root%\zen_emeditor.jsee
mklink    %emeditor_root%\zen_emeditor.jsee %now%\zen_coding\zen_emeditor.jsee
pause