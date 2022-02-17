//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Unit2.cpp", FormPosudba);
USEFORM("Unit1.cpp", FormClanoviPosudbe);
USEFORM("Unit4.cpp", formPosudbe);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFormClanoviPosudbe), &FormClanoviPosudbe);
		Application->CreateForm(__classid(TFormPosudba), &FormPosudba);
		Application->CreateForm(__classid(TformPosudbe), &formPosudbe);
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
