//---------------------------------------------------------------------------

#ifndef LoginH
#define LoginH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
//---------------------------------------------------------------------------
class TFormLogin : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TEdit *editKorisnicko;
	TButton *btnLogin;
	TEdit *editLozinka;
	TLabel *Label2;
	TLabel *labelPrijava;
	TADOTable *ADOTable1;
	TDataSource *DataSource1;
	TADOQuery *ADOQuery1;
	void __fastcall btnLoginClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormLogin(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormLogin *FormLogin;
//---------------------------------------------------------------------------
#endif
