//Fonctions relatives à l'initialisation de l'oscillateur du dsPIC
#include "../src/Define.h"


void init_OSC(void)
{
RCONbits.SWDTEN=0;						//Disable WDT
CLKDIVbits.DOZE = 0b000;				//Fcy divided by 1
CLKDIVbits.FRCDIV = 0b000;				//FRC divided by 1
OSCTUNbits.TUN = 0b000000;				//Center frequency FRC = 7,37Mhz

//Configure Oscillator to operate the device at 40MIPS
//Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
//Fosc= 7.37M*43/(2*2)=79.22Mhz for ~40MIPS input clock
//Fvco= Fin*M/N1=147.4Mhz
PLLFBD=41;								//M=40
CLKDIVbits.PLLPOST=0;					//N1=2
CLKDIVbits.PLLPRE=0;					//N2=2

__builtin_write_OSCCONH(0x01);			//Initiate Clock Switch to FRC with PLL (NOSC=0b001)
__builtin_write_OSCCONL(0x01);			//Start clock switching
while(OSCCONbits.COSC!=0b001);			//Wait for Clock switch to occur
while(OSCCONbits.LOCK!=1);				//Wait for PLL to lock

//DAC rate max: 100Ksps
//The DAC clock must not exceed 100k*256=25,6Mhz

ACLKCONbits.SELACLK = 0;				//FRC w/ Pll as Clock Source 
ACLKCONbits.AOSCMD = 0;					//Auxiliary Oscillator Disabled
ACLKCONbits.ASRCSEL = 0;				//Auxiliary Oscillator is the Clock Source
ACLKCONbits.APSTSCLR = 0b111;			//FRC divide by 1
}
