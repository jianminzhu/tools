set name=EmEditorPro15.2.2x64
set now=%~dp0

 rd /q     %now%..\%name%\m
mklink /d %now%..\%name%\m  %now%\m

 rd /q     %now%..\%name%\myjsee 
mklink /d %now%..\%name%\myjsee  %now%\myjsee

 rd /q     %now%..\%name%\zen_coding 
mklink /d %now%..\%name%\zen_coding %now%\zen_coding

 del /q    %now%..\%name%\zen_emeditor.jsee
mklink    %now%..\%name%\zen_emeditor.jsee %now%\zen_coding\zen_emeditor.jsee
pause