//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TformPosudbe *formPosudbe;
//---------------------------------------------------------------------------
__fastcall TformPosudbe::TformPosudbe(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TformPosudbe::btnNovaPosudbaClick(TObject *Sender)
{
	FormPosudba->editAdresa->Text = FormClanoviPosudbe->dbeditAdresa->Text;
	FormPosudba->editIme->Text = FormClanoviPosudbe->dbEditIme->Text;
	FormPosudba->editPrezime->Text = FormClanoviPosudbe->dbEditPrezime->Text;
	FormPosudba->editTelBroj->Text = FormClanoviPosudbe->dbEditTelBroj->Text;
	FormPosudba->editClanskiBroj->Text = FormClanoviPosudbe->dbEditClanskiBroj->Text;
	if(FormPosudba->ShowModal() == mrOk)
	{
		if((FormPosudba->dbEditKolicina->Text).ToInt() > 0)
		{
			TPosudbe->Insert();
			TPosudbe->FieldByName("isbnKnjige")->AsString = FormPosudba->dbEditIsbn->Text;
			TPosudbe->FieldByName("datumPosudbe")->AsDateTime = FormPosudba->datePocetna->Date;
			TPosudbe->FieldByName("datumPovratka")->AsDateTime = FormPosudba->datePovratak->Date;
			TPosudbe->FieldByName("clanskiBroj")->AsString = FormPosudba->editClanskiBroj->Text;
			TPosudbe->Post();


			ShowMessage("Uspje�na posudba, �lan " + FormPosudba->editIme->Text + " je posudio knjigu " + FormPosudba->dbEditNaziv->Text);
		}
		else{
			ShowMessage("Neuspje�na posudba, navedena knjiga nije na stanju!");
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TformPosudbe::btnObrisiClick(TObject *Sender)
{
    TPosudbe->Delete();
}
//---------------------------------------------------------------------------

