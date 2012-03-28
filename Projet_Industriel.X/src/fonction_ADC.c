//Fonctions relatives au convertisseur Analogique/Numérique du dsPIC
#include "../src/Define.h"




//Initialisation de l'ADC
void init_ADC(void)
{
AD1CON1bits.ADON = 0;			//Turn off the A/D converter
AD1CON1bits.ADSIDL = 0;			//Continue operation in idle mode
AD1CON1bits.AD12B = 0;			//10bits conversion
AD1CON1bits.FORM = 0;			//Result return an integer
AD1CON1bits.SSRC = 7;			//Mode auto-convert
AD1CON1bits.ASAM = 0;			//Sampling begins when SAMP bit is "1"
AD1CON1bits.SAMP = 0;			//No start sampling

AD1CON2 = 0x0000;
		
AD1CON3bits.ADRC = 0;			// ADC Clock is derived from Systems Clock
AD1CON3bits.ADCS = 1;			// ADC Conversion Clock Tad=Tcy*(ADCS+1)= (1/40M)*4 = 100ns 
								// ADC Conversion Time for 12-bit Tc=14*Tad = 1.4us 

AD1CON4bits.DMABL = 0;			//Allocates 1 word to each analog input
AD1CHS0 = 0x0505;
AD1CSSL = 0x0000;
AD1PCFGL = 0x0000;				//All channels in analog

IFS0bits.AD1IF=0;
IEC0bits.AD1IE=1;

AD1CON1bits.ADON = 1;			//Turn on the A/D converter
}





//Acquisition de la valeur analogique en convertion en numérique
int convertADC(void)
{
int ADCValue=0;

AD1CON1bits.ADON = 1;		//Turn on the A/D converter
AD1CON1bits.SAMP = 1; 		// Start sampling 
while (!AD1CON1bits.DONE); 	// Wait for the conversion to complete
ADCValue = ADC1BUF0; 		// Read the conversion result
AD1CON1bits.ADON = 0;		//Turn off the A/D converter

return ADCValue;
}
