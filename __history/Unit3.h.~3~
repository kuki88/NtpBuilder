//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdCustomTCPServer.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
#include <IdTCPServer.hpp>
//---------------------------------------------------------------------------
class TFormTCP : public TForm
{
__published:	// IDE-managed Components
	TEdit *editServerIp;
	TLabel *Label1;
	TButton *btnConnDisc;
	TEdit *Edit1;
	TLabel *labelSpojeno;
	TIdTCPClient *TCPKlijent;
	TIdTCPServer *TCPServer;
	void __fastcall btnConnDiscClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormTCP(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormTCP *FormTCP;
//---------------------------------------------------------------------------
#endif
