:: script to flash SPI
@echo off

:: flash
.\SPIFlashWriter\NuVoiceWriter.exe --spidata=%~dp0flash.ROM --actions=evp

:exit