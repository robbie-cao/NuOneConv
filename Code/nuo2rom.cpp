#include <iostream>
#include <fstream>
#include <afx.h>

using namespace std;

int main(int argc, char const *argv[])
{
	ifstream listFile;
	CFile nuoFile;
	CFile romFile;
	CFile recFile;
	CFile headFile;
	int nuoNum = 0;
	int maxNuoSize = 0;

	int bitWize = sizeof(int);
	char listline[100];

	CString listFilename = "D:\\Code\\NuoEnc\\code\\123.txt";
	CString nuoFilename;
	CString recFilename = "flash.ROM";
	if (argc > 2) {
		listFilename = argv[1];
		recFilename = argv[2];
	}
	else {
		cout << "No input list file!" << endl;
		system("pause");
	}

	listFile.open(listFilename.GetString());
	if (!listFile.good()) {
		cout << "Open list file error" << endl;
		return -1;
	}

	while (listFile.getline(listline, 100)) {
		nuoNum++;
	}
	listFile.close();

	/* Calculate addrs */
	int startAddr = 16 + nuoNum * 8;
	int nuoSize = 0;
	int reserved = 16;

	/* Open Record File */
	if (!(recFile.Open(recFilename, CFile::modeCreate | CFile::modeWrite, NULL))) {
		cout << "Open rec file failed!" << endl;
		system("pause");
		return -1;
	}

	
	/* Write record */
	recFile.Write(&nuoNum, bitWize);
	recFile.Write(&nuoSize, bitWize);
	recFile.Write(&reserved, bitWize);
	recFile.Write(&startAddr, bitWize);
	listFile.open(listFilename.GetString());
	cout << "Writing head...";
	while (listFile.getline(listline, 100)) {
		nuoFilename = listline;
		/* Open Nuo filename */
		if (!(nuoFile.Open(nuoFilename, CFile::modeRead, NULL))) {
			cout << "Open nuo file failed!" << endl;
			system("pause");
			return -1;
		}
		nuoSize = nuoFile.GetLength();
		/* max */
		if (nuoSize > maxNuoSize) maxNuoSize = nuoSize;

		recFile.Write(&startAddr, bitWize);
		recFile.Write(&nuoSize, bitWize);
		startAddr += nuoSize;
		nuoFile.Close();
	}
	cout << "Complete!" << endl;
	listFile.close();

	/* Copy nuo files */
	char *buffer = new char[maxNuoSize];
	listFile.open(listFilename.GetString());
	cout << "Writing ROM...";
	while (listFile.getline(listline, 100)) {
		nuoFilename = listline;
		/* Open Nuo filename */
		if (!(nuoFile.Open(nuoFilename, CFile::modeRead, NULL))) {
			cout << "Open nuo file failed!" << endl;
			system("pause");
			return -1;
		}
		nuoSize = nuoFile.GetLength();
		memset(buffer,0,maxNuoSize);
		nuoFile.Read(buffer, nuoSize);
		recFile.Write(buffer, nuoSize);
		nuoFile.Close();
	}
	cout << "Complete!" << endl;
	listFile.close();

	
	
	system("pause");
	return 0;
}



	
	
