@echo off
IF NOT EXIST 7z.exe GOTO NO7Z
IF NOT EXIST "Twitch Drops Miner.zip" GOTO NEW
7z u "Twitch Drops Miner.zip" "Twitch Drops Miner/" -r -x!"Twitch Drops Miner/cookies.*"
GOTO TEST
:NEW
7z a "Twitch Drops Miner.zip" "Twitch Drops Miner/" -r -x!"Twitch Drops Miner/cookies.*"
GOTO TEST
:TEST
7z t "Twitch Drops Miner.zip"
GOTO EXIT
:NO7Z
echo No 7z.exe detected, skipping packaging!
GOTO EXIT
:EXIT
exit %errorlevel%
