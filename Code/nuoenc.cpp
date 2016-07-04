#include <iostream>
#include <cstring>
#include <afx.h>
using namespace std;

#define FORMAT_PC16       (0x0005)  // P16
#define FORMAT_LP8        (0x000E)  // LP8
#define FORMAT_E2MDPCM      (0x0007)  // MD4
#define FORMAT_NUSOUND      (0x002F) // NUS
#define FORMAT_NUONEX_NOEVENT   (0x0040) // NUO
#define FORMAT_NULITE_NOEVENT   (0x0050) // NUL
#define FORMAT_NUVOX_NOEVENT  (0x0060) // NUV
#define FORMAT_IMAADPCM_NOEVENT (0x0080) // IMAADPCM

typedef struct
{
	unsigned int dwMD4EncoderIndex;
	float fNuS_BSP;
	float fNuO_BSP;
	unsigned int dwNuOEngrThr;
	float fNuL_BSP;
	float fNuV_BSP;
	DWORD dwVADCNG;
}S_BUIDINFOEX;

typedef bool (FAR WINAPI *AUDIOENC) (
	void *pszInFileName,
	unsigned int u32InFilePathLen,
	void *pszOutFileName,
	unsigned int u32OutFilePathLen,
	unsigned int u32EncodeFormat,
	void *pVoid
	);


int main(int argc, char *argv[])
{
	CString file;
	float para = 1.5;

	// Load DLL
	HINSTANCE hAudioEncoer = ::LoadLibrary(_T("TVAUDIOENODER.dll"));
	if (!hAudioEncoer) {
		cout << "load DLL fail" << endl;
		system("pause");
		return FALSE;
	}
	AUDIOENC pAudioEnc;

	pAudioEnc = (AUDIOENC) ::GetProcAddress(
		hAudioEncoer,
		"AudioEnc_ConvertTargetFormat");

	S_BUIDINFOEX sBuildInfo;


	// Load File
	cout << endl;
	cout << "Start NuOne Encoding" << endl;
	if (argc > 1) {
		file = argv[1];
		para = atof(argv[2]);
	}
	else {
		cout << "No input file" << endl;
		system("pause");
		return FALSE;
	}

	wcout << "Inputfile: " << file.GetString() << endl;
	CString csWaveFileName = file;
	CString Filename = csWaveFileName.Left(csWaveFileName.GetLength() - 3);
	CString csNuOneXfilename = Filename + "nuo";
	wcout << "Outputfile: " << csNuOneXfilename.GetString() << endl;

	// Encodee parameters
	sBuildInfo.dwMD4EncoderIndex = 0;
	sBuildInfo.dwNuOEngrThr = 80;
	sBuildInfo.fNuS_BSP = 2.0;
	sBuildInfo.fNuO_BSP = para;
	sBuildInfo.fNuL_BSP = 1.5;
	sBuildInfo.fNuV_BSP = 0.3;
	sBuildInfo.dwVADCNG = 1;

	// encode
	try {
		(*pAudioEnc) (
			csWaveFileName.GetBuffer(0),
			csWaveFileName.GetLength(),
			csNuOneXfilename.GetBuffer(0),
			csNuOneXfilename.GetLength(),
			FORMAT_NUONEX_NOEVENT,
			&sBuildInfo
			);
	}
	catch (CFileException* e)
	{
		e->ReportError();
	}


	wcout << "Conver file Complete: " << csNuOneXfilename.GetString() << endl;
	return 1;
}