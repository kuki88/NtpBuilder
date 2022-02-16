//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Unit1.cpp", FormClanoviPosudbe);
USEFORM("Unit2.cpp", FormPosudba);
USEFORM("TcpKlijentTestForma.cpp", FormTCP);
USEFORM("Login.cpp", FormLogin);
USEFORM("Main.cpp", FormMain);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFormTCP), &FormTCP);
		Application->CreateForm(__classid(TFormLogin), &FormLogin);
		Application->CreateForm(__classid(TFormMain), &FormMain);
		Application->CreateForm(__classid(TFormClanoviPosudbe), &FormClanoviPosudbe);
		Application->CreateForm(__classid(TFormPosudba), &FormPosudba);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
