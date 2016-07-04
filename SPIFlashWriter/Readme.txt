Usage:
    NuVoiceWriterUI.exe [--spidata=<SPI_DATA_PATH>] [--aprom=<APROM_PATH>] [--actions=<e|p|v>] [--file_start_addr=<START_ADDR>] 
    [--write_start_addr=<WRITE_START_ADDR>] [--setting_file=<SETTING_FILE>] [--spi_interface=<INTERFACE_NUMBER>]
    
Example:
    NuVoiceWriterUI.exe --spidata=C:\SPIData.bin
============================================================================

--spidata=<SPI_DATA_PATH>
    The file you would like to download to chip

--actions=<e|p|v>
    Which action you would like to do. If not specified, all actions will be executed.
    e : Erase, p : Program, v : Verify
    Ex :
        NuVoiceWriterUI.exe --spidata=C:\SPIData.bin --actions=evp
    
--write_start_addr
    For user to specify where to start writing
    Ex :
        NuVoiceWriterUI.exe --spidata="D:\New folder\SPIData.bin" --write_start_addr=0x3000
        
--setting_file
    The program will set start address in this config file. So you don't have to set in GUI again the next time when you restart it.
    Ex :
        NuVoiceWriterUI.exe --spidata="D:\New folder\SPIData.bin" --setting_file="D:\New folder\Cfg.ini"
    
--spi_interface
    Specify the interface to write. 0 : SPI0 Device1, 1: SPI0 Device2, 2:SPI1 Device1, 3:SPI1 Device2
    Ex :
        NuVoiceWriterUI.exe --spidata="D:\New folder\SPIData.bin" --setting_file="D:\New folder\Cfg.ini" --spi_interface=0
    
    
    
    