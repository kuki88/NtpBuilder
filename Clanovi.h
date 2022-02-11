//---------------------------------------------------------------------------
#include <string>
#ifndef ClanoviH
#define ClanoviH
//---------------------------------------------------------------------------
#endif


class Clanovi
{
private:
	std::string clanskiBroj, ime, prezime, telefonskiBroj, adresa;

public:
	Clanovi();
	Clanovi(std::string _clBroj, std::string _ime, std::string _prezime, std::string _telBroj, std::string _adresa) :
		clanskiBroj(_clBroj), ime(_ime), prezime(_prezime), telefonskiBroj(_telBroj), adresa(_adresa) {}
};
