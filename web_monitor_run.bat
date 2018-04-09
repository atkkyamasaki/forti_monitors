rem ================================================================
rem Remove previous files
rem ================================================================
del C:\Origin_tool\forti_monitors\monitors\result.json
del C:\Origin_tool\forti_monitors\monitors\features\screenshots\*.png

rem ================================================================
rem Run Web Monitor
rem ================================================================
cd C:\Origin_tool\forti_monitors\monitors
call cucumber -f json -o result.json

rem ================================================================
rem Move results files
rem ================================================================
del C:\Origin_tool\forti_tools\src\AppBundle\Resources\config\monitors\01\result.json
del C:\Origin_tool\forti_tools\web\image\monitors\01\*.png
copy C:\Origin_tool\forti_monitors\monitors\result.json C:\Origin_tool\forti_tools\src\AppBundle\Resources\config\monitors\01\
copy C:\Origin_tool\forti_monitors\monitors\features\screenshots\*.png C:\Origin_tool\forti_tools\web\image\monitors\01\
