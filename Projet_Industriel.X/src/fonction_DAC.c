//Fonctions relatives au convertisseur Numérique/Analogique du dsPIC
#include "../src/Define.h"


//Initialisation du convertisseur DAC avec interruptions
void init_DAC(void)
{
DAC1STATbits.LOEN = 1;			//Left channel output enable
DAC1STATbits.ROEN = 1;			//Right channel output enable
DAC1STATbits.RITYPE = 0;		//Interrupt if FIFO is not full
DAC1STATbits.LITYPE = 0;		//...

IFS4bits.DAC1RIF =0;			//Interrupt on DAC1	
IFS4bits.DAC1LIF =0;			//...
IEC4bits.DAC1RIE=0;				//...
IEC4bits.DAC1LIE=0;				//...

DAC1CONbits.AMPON = 0;			//Disable amplifier
DAC1CONbits.FORM = 0;			//Unsigned integer format
DAC1CONbits.DACFDIV = 1;		//Divid input clock by 2
//DAC1DFLT = 0x7FFF;
DAC1CONbits.DACEN = 1;			//DAC ON
}
