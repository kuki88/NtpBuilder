//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnTraziClick(TObject *Sender)
{
	TClanovi->Filtered = false;
	TLocateOptions searchOptions;
	searchOptions.Clear();
	searchOptions << loPartialKey;

	if(editPrezime->Text.IsEmpty())
	{
		TClanovi->Filtered = false;
		return;
	}

	if(TClanovi->Locate("prezime", editPrezime->Text, searchOptions))
	{
		TClanovi->Filter = "prezime LIKE '" + editPrezime->Text.LowerCase() + "%'";
		TClanovi->Filtered = true;
	}
	else ShowMessage("Nije pronađeno");

}
//---------------------------------------------------------------------------

