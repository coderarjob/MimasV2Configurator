:: -----------------------------------------------------------------------------
:: Windows Start script
:: -----------------------------------------------------------------------------
@echo off
set BASEDIR=%~dp0
start /D "%BASEDIR%" /B java -jar kpdfsync.jar
