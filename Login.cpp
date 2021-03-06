//---------------------------------------------------------------------------

#include <vcl.h>
#include <idhashmessagedigest.hpp>
#pragma hdrstop

#include "Login.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormLogin *FormLogin;
//---------------------------------------------------------------------------
__fastcall TFormLogin::TFormLogin(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormLogin::btnLoginClick(TObject *Sender)
{
	TIdHashMessageDigest5* md5 = new TIdHashMessageDigest5;
	UnicodeString hashLozinka = md5->HashStringAsHex(editLozinka->Text);

	UnicodeString query = "select * from admin where korisnickoIme = '" + editKorisnicko->Text +
					 "' AND lozinka = '" + hashLozinka + "'";
	AnsiString ansiQuery = query;

	ADOQuery1->ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO\\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=KUKICRO;Use Encryption for Data=False;Tag with column collation when possible=False";
	ADOQuery1->SQL->Add(ansiQuery);

	ADOQuery1->Prepared = true;

	try
	{
		ADOQuery1->Active = true;
	}
	catch (EADOError& e)
	{
		MessageDlg("Error spajanja", mtError,
					  TMsgDlgButtons() << mbOK, 0);
		return;
	}

	TDataSource* Src = new TDataSource(this);
	Src->DataSet = ADOQuery1;
	Src->Enabled = true;

	if(Src->DataSet->RecordCount < 1){
        ADOQuery1->SQL->Delete(0);

		labelPrijava->Visible = true;
		ADOQuery1->Prepared = false;

        Src->Enabled = false;

		try{
			ADOQuery1->Active = false;
		}
		catch (EADOError& e){
			MessageDlg("Error odspajanja", mtError,
				  TMsgDlgButtons() << mbOK, 0);
		}
		return;
	}

	FormMain->labelUlogiran->Caption = Src->DataSet->FieldByName("korisnickoIme")->AsString;
    FormLogin->Close();
}
//---------------------------------------------------------------------------

