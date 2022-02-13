//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"

// #include "Clanovi.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormClanoviPosudbe *FormClanoviPosudbe;

//Clanovi clan;

//---------------------------------------------------------------------------
__fastcall TFormClanoviPosudbe::TFormClanoviPosudbe(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormClanoviPosudbe::btnTraziClick(TObject *Sender)
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




void __fastcall TFormClanoviPosudbe::btnNovaPosudbaClick(TObject *Sender)
{
<<<<<<< HEAD:__recovery/Unit1.cpp
<<<<<<< HEAD:__history/Unit1.cpp.~33~


	FormPosudba->editAdresa->Text = dbeditAdresa->Text;
	FormPosudba->editIme->Text = dbEditIme->Text;
	FormPosudba->editPrezime->Text = dbEditPrezime->Text;
	FormPosudba->editTelBroj->Text = dbEditTelBroj->Text;
	FormPosudba->editClanskiBroj->Text = dbEditClanskiBroj->Text;

=======
>>>>>>> parent of d8b76a5 (first):__history/Unit1.cpp.~22~
=======
>>>>>>> parent of d8b76a5 (first):__history/Unit1.cpp.~22~
	if(FormPosudba->ShowModal() == mrOk)
	{
		if((FormPosudba->dbEditKolicina.Text).ToInt() > 0)
		TPosudbe->Insert();
		TPosudbe->FieldByName("isbnKnjige")->AsString = FormPosudba->dbEditIsbn->Text;
		TPosudbe->FieldByName("datumPosudbe")->AsDateTime = FormPosudba->datePocetna->Date;
		TPosudbe->FieldByName("datumPovratka")->AsDateTime = FormPosudba->datePovratak->Date;
		TPosudbe->FieldByName("clanskiBroj")->AsString = FormPosudba->->Text;
<<<<<<< HEAD:__recovery/Unit1.cpp

=======
>>>>>>> parent of d8b76a5 (first):__history/Unit1.cpp.~22~

<<<<<<< HEAD:__history/Unit1.cpp.~33~

<<<<<<< HEAD:__recovery/Unit1.cpp
			ShowMessage("Uspješna posudba, član " + FormPosudba->dbEditIme->Text + " je posudio knjigu " + FormPosudba->dbEditNaziv->Text);
		}
		else{
            ShowMessage("Neuspješna posudba, navedena knjiga nije na stanju!");
        }
=======
>>>>>>> parent of d8b76a5 (first):__history/Unit1.cpp.~22~
=======
>>>>>>> parent of d8b76a5 (first):__history/Unit1.cpp.~22~
	}

//	std::string clanskiBr(gridClanovi->SelectedRows[0].Items[0].begin(), gridClanovi->SelectedRows[0].Items[0].end());
//	Label3->Caption = clanskiBr.c_str();
}
//---------------------------------------------------------------------------


