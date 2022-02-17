//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <random>
#include <iomanip>
#include "Unit1.h"
#include "Unit5.h"
#include "something.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TformImport *formImport;
//---------------------------------------------------------------------------
__fastcall TformImport::TformImport(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TformImport::btnLoadClick(TObject *Sender)
{

	if(dialogLoad->Execute() == true)
		XMLDocument1->FileName = dialogLoad->FileName;

	_di_IXMLclanoviType clanovi = Getclanovi(XMLDocument1);
	listClanovi->Items->Clear();

	for (int i = 0; i < clanovi->Count; i++) {
		listClanovi->Items->Add();
		listClanovi->Items->Item[i]->SubItems->Add(clanovi->clan[i]->ime);
		listClanovi->Items->Item[i]->SubItems->Add(clanovi->clan[i]->prezime);
		listClanovi->Items->Item[i]->SubItems->Add(clanovi->clan[i]->telefonski_broj);
		listClanovi->Items->Item[i]->SubItems->Add(clanovi->clan[i]->adresa);
		listClanovi->Items->Item[i]->Caption=clanovi->clan[i]->clanski_broj;

	}
}
//---------------------------------------------------------------------------
void __fastcall TformImport::btnSyncClick(TObject *Sender)
{
	_di_IXMLclanoviType clanovi = Getclanovi(XMLDocument1);

	for(int i=0;i<clanovi->Count;i++){
		UnicodeString query ="Select count(*) FROM Clanovi WHERE clanskiBroj = '" + clanovi->clan[i]->clanski_broj +
							"' GROUP BY clanskiBroj;";

		ADOQuery1->SQL->Add(query);
		ADOQuery1->Open();
		ADOQuery1->Prepared = true;

		Rezultat->DataSet = ADOQuery1;
		Rezultat->Enabled = true;
		FormClanoviPosudbe->TClanovi->Insert();
		if(Rezultat->DataSet->RecordCount < 1)
			FormClanoviPosudbe->TClanovi->FieldByName("clanskiBroj")->AsString=clanovi->clan[i]->clanski_broj;
		else{
			clanovi->clan[i]->clanski_broj=clanovi->clan[i]->clanski_broj+"a";
			listClanovi->Items->Item[i]->Caption=clanovi->clan[i]->clanski_broj;
			FormClanoviPosudbe->TClanovi->FieldByName("clanskiBroj")->AsString=clanovi->clan[i]->clanski_broj;

		}

		FormClanoviPosudbe->TClanovi->FieldByName("ime")->AsString=clanovi->clan[i]->ime;
		FormClanoviPosudbe->TClanovi->FieldByName("prezime")->AsString=clanovi->clan[i]->prezime;
		FormClanoviPosudbe->TClanovi->FieldByName("telefonskiBroj")->AsString=clanovi->clan[i]->telefonski_broj;
		FormClanoviPosudbe->TClanovi->FieldByName("adresa")->AsString=clanovi->clan[i]->adresa;

		FormClanoviPosudbe->TClanovi->Post();
 }
}
//---------------------------------------------------------------------------
