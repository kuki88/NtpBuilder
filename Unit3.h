//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TEvidencija : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label2;
	TDBEdit *DBEdit1;
	TDBEdit *DBEdit2;
	TDBEdit *DBEdit3;
	TDBEdit *DBEdit4;
	TDBEdit *DBEdit5;
	TDBEdit *DBEdit6;
	TADOTable *TPosudbe;
	TAutoIncField *TPosudbeId;
	TWideStringField *TPosudbeisbnKnjige;
	TDateTimeField *TPosudbedatumPosudbe;
	TDateTimeField *TPosudbedatumPovratka;
	TWideStringField *TPosudbeclanskiBroj;
	TStringField *TPosudbeNazivKnjige;
	TDataSource *DPosudbe;
	TDataSource *DKnjige;
	TADOTable *TKnjige;
	TADOConnection *ADOConnection1;
	TLabel *Label1;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TDBGrid *gridPosudbe;
	TADOTable *TClanovi;
	TWideStringField *TClanoviclanskiBroj;
	TStringField *TClanoviime;
	TStringField *TClanoviprezime;
	TStringField *TClanovitelefonskiBroj;
	TStringField *TClanoviadresa;
	TDataSource *DClanovi;
private:	// User declarations
public:		// User declarations
	__fastcall TEvidencija(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEvidencija *Evidencija;
//---------------------------------------------------------------------------
#endif
