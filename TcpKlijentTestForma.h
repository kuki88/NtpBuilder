//---------------------------------------------------------------------------

#ifndef TcpKlijentTestFormaH
#define TcpKlijentTestFormaH
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
#include <IdContext.hpp>
//---------------------------------------------------------------------------
class TFormTCP : public TForm
{
__published:	// IDE-managed Components
	TEdit *editServerIp;
	TLabel *Label1;
	TButton *btnConnDisc;
	TEdit *editPodatak;
	TLabel *labelSpojeno;
	TIdTCPClient *TCPKlijent;
	TIdTCPServer *TCPServer;
	TButton *Button1;
	void __fastcall btnConnDiscClick(TObject *Sender);
	void __fastcall TCPServerExecute(TIdContext *AContext);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormTCP(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormTCP *FormTCP;
//---------------------------------------------------------------------------
#endif
