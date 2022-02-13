//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFormClanoviPosudbe : public TForm
{
__published:	// IDE-managed Components
<<<<<<< HEAD
	TADOConnection *ADOConnection1;
	TADOTable *TKnjige;
	TADOTable *TPosudbe;
	TDataSource *DKnjige;
	TDataSource *DPosudbe;
	TLabel *Label1;
	TDBGrid *gridClanovi;
	TADOTable *TClanovi;
	TDataSource *DClanovi;
	TAutoIncField *TPosudbeId;
	TWideStringField *TPosudbeisbnKnjige;
	TDateTimeField *TPosudbedatumPosudbe;
	TDateTimeField *TPosudbedatumPovratka;
	TWideStringField *TPosudbeclanskiBroj;
	TStringField *TPosudbeNazivKnjige;
	TWideStringField *TClanoviclanskiBroj;
	TStringField *TClanoviime;
	TStringField *TClanoviprezime;
	TStringField *TClanovitelefonskiBroj;
	TStringField *TClanoviadresa;
=======
	TDBGrid *gridPosudbe;
	TLabel *Label1;
	TDBGrid *gridClanovi;
	TLabel *Label2;
>>>>>>> parent of bef97b7 (Revert "first")
	TButton *btnNovaPosudba;
	TEdit *editPrezime;
	TButton *btnTrazi;
	TGroupBox *GroupBox1;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TDBEdit *dbEditClanskiBroj;
	TDBEdit *dbEditIme;
	TDBEdit *dbEditPrezime;
	TDBEdit *dbEditTelBroj;
	TDBEdit *dbeditAdresa;
	TADOConnection *ADOConnection1;
	TADOTable *TKnjige;
	TDataSource *DKnjige;
	TADOTable *TPosudbe;
	TDataSource *DPosudbe;
	TADOTable *TClanovi;
	TDataSource *DClanovi;
	TAutoIncField *TPosudbeId;
	TWideStringField *TPosudbeisbnKnjige;
	TDateTimeField *TPosudbedatumPosudbe;
	TDateTimeField *TPosudbedatumPovratka;
	TWideStringField *TPosudbeclanskiBroj;
	void __fastcall btnTraziClick(TObject *Sender);
	void __fastcall btnNovaPosudbaClick(TObject *Sender);
	void __fastcall gridClanoviDblClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormClanoviPosudbe(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormClanoviPosudbe *FormClanoviPosudbe;
//---------------------------------------------------------------------------
#endif
