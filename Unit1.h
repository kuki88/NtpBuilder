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
<<<<<<< HEAD
	TADOConnection *ADOConnection1;
	TADOTable *TKnjige;
	TADOTable *TPosudbe;
	TDBGrid *gridPosudbe;
	TDataSource *DKnjige;
	TDataSource *DPosudbe;
	TLabel *Label1;
	TDBGrid *gridClanovi;
	TLabel *Label2;
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
=======
	TADOConnection *ADOConnection1;
	TADOTable *TKnjige;
	TADOTable *TPosudbe;
>>>>>>> parent of d8b76a5 (first)
	TDBGrid *gridPosudbe;
	TDataSource *DKnjige;
	TDataSource *DPosudbe;
	TLabel *Label1;
	TDBGrid *gridClanovi;
	TLabel *Label2;
<<<<<<< HEAD
>>>>>>> parent of bef97b7 (Revert "first")
=======
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
>>>>>>> parent of d8b76a5 (first)
	TButton *btnNovaPosudba;
	TEdit *editPrezime;
	TButton *btnTrazi;
	TLabel *Label9;
	TDBEdit *DBEdit1;
	TLabel *Label10;
	TDBEdit *DBEdit2;
	TLabel *Label11;
	TDBEdit *DBEdit3;
	TLabel *Label12;
	TDBEdit *DBEdit4;
	TLabel *Label13;
	TDBEdit *DBEdit5;
	TLabel *Label14;
	TDBEdit *DBEdit6;
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
	void __fastcall btnTraziClick(TObject *Sender);
	void __fastcall btnNovaPosudbaClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormClanoviPosudbe(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormClanoviPosudbe *FormClanoviPosudbe;
//---------------------------------------------------------------------------
#endif
