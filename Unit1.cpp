﻿//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
// #include "Clanovi.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

//Clanovi clan;

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

void __fastcall TForm1::gridClanoviDblClick(TObject *Sender)
{
	// Clanovi clan;
	std::wstring aa(gridClanovi->SelectedRows[0].Items[0].begin(),
					gridClanovi->SelectedRows[0].Items[0].end());
	ShowMessage(aa.c_str());
}
//---------------------------------------------------------------------------



