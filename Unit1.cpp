﻿//---------------------------------------------------------------------------

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
	TLocateOptions searchOptions;
	searchOptions.Clear();
	searchOptions << loPartialKey;

	if(TClanovi->Locate("prezime", editPrezime->Text, searchOptions))
        ShowMessage("Pronađeno");
	else ShowMessage("Nije pronađeno");

}
//---------------------------------------------------------------------------

