//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFormPosudba : public TForm
{
__published:	// IDE-managed Components
	TButton *Odustani;
	TButton *Posudi;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TDateTimePicker *datePocetna;
	TDateTimePicker *datePovratak;
	TLabel *Label6;
<<<<<<< HEAD
	TADOTable *TPosudba;
	TDataSource *DPosudba;
	TADOConnection *ADOConnection1;
	TWideStringField *TKnjigePosNazivKnjige;
	TWideStringField *TKnjigePosKategorija;
	TIntegerField *TKnjigePosKoličina;
	TWideStringField *TKnjigePosISBN;
	TWideStringField *TKnjigePosAutor;
=======
	TDBEdit *dbEditIme;
	TDBEdit *dbEditPrezime;
	TDBEdit *dbEditTelBroj;
	TDBEdit *dbEditClanskiBroj;
	TDBEdit *dbEditAdresa;
	TDBEdit *dbEditBrojPosudbi;
>>>>>>> parent of bef97b7 (Revert "first")
	TLabel *Label7;
	TDBEdit *dbEditNaziv;
	TLabel *Label8;
	TDBEdit *dbEditKategorija;
	TLabel *Label9;
	TDBEdit *dbEditKolicina;
	TLabel *Label10;
	TDBEdit *dbEditIsbn;
	TLabel *Label11;
	TDBEdit *dbEditAutor;
	TEdit *editIme;
	TEdit *editTelBroj;
	TEdit *editAdresa;
	TEdit *editPrezime;
	TEdit *editClanskiBroj;
	TEdit *editBrojPosudbi;
	TADOConnection *ADOConnection1;
	TADOTable *TKnjige;
	TADOTable *TPosudbe;
	TADOTable *TClanovi;
	TDBGrid *DBGrid1;
	TDataSource *DClanovi;
	TDataSource *DPosudbe;
	TDataSource *DKnjige;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall PosudiClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormPosudba(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormPosudba *FormPosudba;
//---------------------------------------------------------------------------
#endif
