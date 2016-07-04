version = 4371
update_url = [==[http://www.nuvoton.com/]==]
chlog_url = [==[http://www.nuvoton.com/nu_link/ChangeLog.txt]==]

default_language = 3081
default_chip = 2


-- NUC1xx configruations
nuc1xx_part_no = 0x00000000

nuc1xx_file_ldrom = [==[C:\LDROM.hex]==]
nuc1xx_file_aprom = [==[C:\APROM.hex]==]
nuc1xx_file_nvm = [==[C:\Data.hex]==]
nuc1xx_file_all = [==[]==]
nuc1xx_config_history =
{
	{ 0xffffff7f, 0xffffffff },
}

nuc1xx_algorithm = [==[FlashAlgorithm_NUC1xx.a]==]

nuc1xx_ram_address = 0x20000000
nuc1xx_ram_size = 4096
nuc1xx_ram_stack_size = 64

nuc1xx_program_ldrom = false
nuc1xx_program_aprom = true
nuc1xx_program_nvm = false
nuc1xx_program_config = true
nuc1xx_program_option_erase = true
nuc1xx_program_option_blank_check = false
nuc1xx_program_option_write = true
nuc1xx_program_option_verify = false
nuc1xx_program_option_offline_mode = false
nuc1xx_program_option_use_offline_mode_password = true
nuc1xx_program_option_offline_mode_password = [==[nuvoton]==]

nuc1xx_suppy_power = false
nuc1xx_io_voltage_mv = 3300


-- M05x configruations
m05x_part_no = 0x00000000

m05x_file_ldrom = [==[C:\LDROM.hex]==]
m05x_file_aprom = [==[C:\APROM.hex]==]
m05x_file_nvm = [==[C:\Data.hex]==]
m05x_config_history =
{
	{ 0xffffffff, 0x0001f000 },
}

m05x_algorithm = [==[FlashAlgorithm_M05x.a]==]

m05x_ram_address = 0x20000000
m05x_ram_size = 2048
m05x_ram_stack_size = 64

m05x_program_ldrom = false
m05x_program_aprom = true
m05x_program_nvm = false
m05x_program_config = true
m05x_program_option_erase = true
m05x_program_option_blank_check = false
m05x_program_option_write = true
m05x_program_option_verify = false
m05x_program_option_offline_mode = false
m05x_program_option_use_offline_mode_password = true
m05x_program_option_offline_mode_password = [==[nuvoton]==]

m05x_suppy_power = false
m05x_io_voltage_mv = 3300


-- N572 configruations
n572_warn_chip_reset = true
n572_part_no = 0x00000000

n572_file_aprom = [==[C:\APROM.hex]==]
n572_file_spi = [==[F:\bugs\liu.bin]==]
n572_config_history =
{
	{ 0xffffffff, 0x00000001, 0x00000002, 0x00000003, 0x00000004 },
}

n572_algorithm_rom = [==[FlashAlgorithm_N572.a]==]
n572_algorithm_spi = [==[FlashAlgorithm_N572_SPI.a]==]

n572_ram_address = 0x20000000
n572_ram_size = 8192
n572_ram_stack_size = 512

n572_program_aprom = false
n572_program_spi = true
n572_program_config = false
n572_program_option_erase = true
n572_program_option_blank_check = false
n572_program_option_write = true
n572_program_option_verify = true
n572_program_option_offline_mode = false
n572_program_option_use_offline_mode_password = true
n572_program_option_offline_mode_password = [==[nuvoton]==]

n572_suppy_power = false
n572_io_voltage_mv = 3300

n572_frm_chip = [==[]==]
n572_frm_customer = [==[]==]
n572_frm_customer_code = [==[]==]
n572_frm_private_key = [==[]==]
n572_frm_file = [==[C:\n572.frm]==]
n572_default_extstorage_type = 0
n572_default_extstorage_channel = 0
n572_file_spiflash_channel =
{
	[==[F:\bugs\liu.bin]==],
	[==[C:\SPIFlash.hex]==],
	[==[C:\SPIFlash.hex]==],
	[==[C:\SPIFlash.hex]==],
}
n572_file_offset_spiflash_channel =
{
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
}
n572_extstoragew_offset_spiflash_channel =
{
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
}
n572_extstoragew_length_spiflash_channel =
{
	{0x00000000, 0x00096000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
}
n572_extstorager_offset_spiflash_channel =
{
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
}
n572_extstorager_length_spiflash_channel =
{
	{0x00000000, 0x00096000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
	{0x00000000, 0x00000000},
}
n572f072_file_otp_concatenatedata   = [==[C:\8K_flash.bin]==]
n572f072_file_otp_concatenateresult = [==[C:\72K_flash.bin]==]
n572_retain_spiflash_partialwrite_setting_after_filechange = false
