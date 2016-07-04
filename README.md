#<center>NuOne Encode Convert Tools</center>

> Copy of https://github.com/allen9408/NuoEnc

####<center>MUABAOBAO Embedded Tool</center>
####<center>2016.6.23</center>

## Environment Setup
1. Microsoft Visual C++ 2010 Redistributable Package (x86)

## Usage：
### Wav to Rom
```
e.bat [File Directory] [Param]

- File Directory: include wav files (default: ./)
- Param: bit per sample, 0.8~2.0, step 0.1 (default: 1.5)
```

### Flash Rom
```
f.bat
```

## Develop Notice:
### NuoEncPrj
1. Essential DLLs : NuOneXCodecDll.dll, TVAUDIOENODER.dll
2. SDK: Visual Studio 2015 (support MFC)
3. Option for Project:
    + 常规 -> MFC的使用：在静态库中使用MFC
    + 常规 -> 字符集：使用多字节字符集
    + C/C++ -> 预处理器 -> 预处理器定义：modify "_MFC" to "_UNICODE"

### Nuo2RomPrj
1. SDK: Visual Studio 2015 (support MFC)
2. Option for Project:
    + 常规 -> MFC的使用：在静态库中使用MFC
3. Rom component
![Rom](http://o7orbx8c7.bkt.clouddn.com/NuoRom.png)

## Build
```
m.bat [command] [target]

command:
    - b: build
    - r: rebuild
    - c: clean
target:
    - a: all
    - n: NuoEnc
    - r: Nuo2Rom
```

