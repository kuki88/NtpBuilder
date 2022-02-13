//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormTCP *FormTCP;
int randPort = 1000+ (rand() % 9999);
//---------------------------------------------------------------------------
__fastcall TFormTCP::TFormTCP(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TFormTCP::btnConnDiscClick(TObject *Sender)
{
	TCPKlijent->Host = editServerIp->Text;
	TCPKlijent->Port = randPort;

	TCPKlijent->Connect();


}
//---------------------------------------------------------------------------
