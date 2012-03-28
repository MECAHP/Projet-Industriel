//Fonctions relatives à l'initialisation du dsPIC
#include "../src/Define.h"


//Initialisation du dsPIC
void init_dsPIC(void)
{
TRISBbits.TRISB15 = 0;			//Config LED's as output
TRISBbits.TRISB14 = 0;			//...
TRISBbits.TRISB13 = 0;			//...
TRISBbits.TRISB12 = 0;			//...
PORTB=0xF000;
TRISBbits.TRISB3 = 1;			//AN5 is analog input
AD1PCFGLbits.PCFG5 = 0;			//...			
}
