@echo off
echo.
echo.
echo Starting MySQL database. Please wait 5-10 seconds.
start /MIN /D.\MySQL\ MySQL.bat
ping 127.0.0.1 -n 15 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo Starting DayZAntiHax... (v0.5)
ping 127.0.0.1 -n 5 >NUL
start /D.\@extras\ANTIHAX start.bat
::cd cfgdayz
::cd battleye
::start dayzantihax.exe
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo Executing spawn script...
.\MySQL\bin\mysql --user root --password=root --host=127.0.0.1 --port=3316 --database=hivemind --execute="call pMain()"
ping 127.0.0.1 -n 5 >NUL
.\MySQL\cecho {0A}	OK.{07}
echo.
echo.
echo Starting server...
start .\Expansion\beta\arma2oaserver.exe -mod=@dayz;@hive -name=cfgdayz -config=cfgdayz\server.cfg -cfg=cfgdayz\arma2.cfg -profiles=cfgdayz -world=Chernarus -exThreads=0 -maxMem=1024
ping 127.0.0.1 -n 10 >NUL
.\MySQL\cecho {0A}	OK.{07} 
echo.
echo.
echo Starting BEC... (BattlEye Extended Control)
start /D.\@extras\BEC start.bat
echo.
echo.
.\MySQL\cecho {0B}Launcher created by Pwnoz0r.{07}
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo.
.\MySQL\cecho {0A}Leaving le launcher...{07}
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo.
echo.
exit