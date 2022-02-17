
// ********************************************************************************** //
//                                                                                  
//                                 XML Data Binding                                 
//                                                                                  
//         Generated on: 17.2.2022. 4:22:03                                         
//       Generated from: C:\Users\Jakov\Documents\GitHub\NtpBuilder\something.xml   
//   Settings stored in: C:\Users\Jakov\Documents\GitHub\NtpBuilder\something.xdb   
//                                                                                  
// ********************************************************************************** //

#ifndef   somethingH
#define   somethingH

#include <System.hpp>
#include <Xml.Xmldom.hpp>
#include <Xml.XMLIntf.hpp>
#include <Xml.XMLDoc.hpp>
#include <XMLNodeImp.h>
#include <Xml.xmlutil.hpp>


// Forward Decls 

__interface IXMLclanoviType;
typedef System::DelphiInterface<IXMLclanoviType> _di_IXMLclanoviType;
__interface IXMLclanType;
typedef System::DelphiInterface<IXMLclanType> _di_IXMLclanType;

// IXMLclanoviType 

__interface INTERFACE_UUID("{946269A9-8084-4AD1-A388-D93A3FF17564}") IXMLclanoviType : public Xml::Xmlintf::IXMLNodeCollection
{
public:
public:
  // Property Accessors 
  virtual _di_IXMLclanType __fastcall Get_clan(int Index) = 0;
  // Methods & Properties 
  virtual _di_IXMLclanType __fastcall Add() = 0;
  virtual _di_IXMLclanType __fastcall Insert(const int Index) = 0;
  __property _di_IXMLclanType clan[int Index] = { read=Get_clan };/* default */
};

// IXMLclanType 

__interface INTERFACE_UUID("{9CB16708-1BA1-4131-BCE8-DD3631E4201C}") IXMLclanType : public Xml::Xmlintf::IXMLNode
{
public:
  // Property Accessors 
  virtual System::UnicodeString __fastcall Get_clanski_broj() = 0;
  virtual System::UnicodeString __fastcall Get_ime() = 0;
  virtual System::UnicodeString __fastcall Get_prezime() = 0;
  virtual int __fastcall Get_telefonski_broj() = 0;
  virtual System::UnicodeString __fastcall Get_adresa() = 0;
  virtual void __fastcall Set_clanski_broj(System::UnicodeString Value) = 0;
  virtual void __fastcall Set_ime(System::UnicodeString Value) = 0;
  virtual void __fastcall Set_prezime(System::UnicodeString Value) = 0;
  virtual void __fastcall Set_telefonski_broj(int Value) = 0;
  virtual void __fastcall Set_adresa(System::UnicodeString Value) = 0;
  // Methods & Properties 
  __property System::UnicodeString clanski_broj = { read=Get_clanski_broj, write=Set_clanski_broj };
  __property System::UnicodeString ime = { read=Get_ime, write=Set_ime };
  __property System::UnicodeString prezime = { read=Get_prezime, write=Set_prezime };
  __property int telefonski_broj = { read=Get_telefonski_broj, write=Set_telefonski_broj };
  __property System::UnicodeString adresa = { read=Get_adresa, write=Set_adresa };
};

// Forward Decls 

class TXMLclanoviType;
class TXMLclanType;

// TXMLclanoviType 

class TXMLclanoviType : public Xml::Xmldoc::TXMLNodeCollection, public IXMLclanoviType
{
  __IXMLNODECOLLECTION_IMPL__
protected:
  // IXMLclanoviType 
  virtual _di_IXMLclanType __fastcall Get_clan(int Index);
  virtual _di_IXMLclanType __fastcall Add();
  virtual _di_IXMLclanType __fastcall Insert(const int Index);
public:
  virtual void __fastcall AfterConstruction(void);
};

// TXMLclanType 

class TXMLclanType : public Xml::Xmldoc::TXMLNode, public IXMLclanType
{
  __IXMLNODE_IMPL__
protected:
  // IXMLclanType 
  virtual System::UnicodeString __fastcall Get_clanski_broj();
  virtual System::UnicodeString __fastcall Get_ime();
  virtual System::UnicodeString __fastcall Get_prezime();
  virtual int __fastcall Get_telefonski_broj();
  virtual System::UnicodeString __fastcall Get_adresa();
  virtual void __fastcall Set_clanski_broj(System::UnicodeString Value);
  virtual void __fastcall Set_ime(System::UnicodeString Value);
  virtual void __fastcall Set_prezime(System::UnicodeString Value);
  virtual void __fastcall Set_telefonski_broj(int Value);
  virtual void __fastcall Set_adresa(System::UnicodeString Value);
};

// Global Functions 

_di_IXMLclanoviType __fastcall Getclanovi(Xml::Xmlintf::_di_IXMLDocument Doc);
_di_IXMLclanoviType __fastcall Getclanovi(Xml::Xmldoc::TXMLDocument *Doc);
_di_IXMLclanoviType __fastcall Loadclanovi(const System::UnicodeString& FileName);
_di_IXMLclanoviType __fastcall  Newclanovi();

#define TargetNamespace ""

#endif