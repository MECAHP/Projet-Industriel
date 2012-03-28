//Fonctions du programme principal
#define start
#include "../src/Define.h"


//Configuration de l'oscillateur
_FOSCSEL(FNOSC_FRC);									//FRC: Intern oscillator
_FOSC(FCKSM_CSECMD & OSCIOFNC_ON  & POSCMD_NONE); 		//Clock Switching is enabled and Fail Safe Clock Monitor is disabled
														//OSC2 Pin Function: OSC2 is Clock Output
														//Primary Oscillator Mode: Disabled


/********************************************Programme Principal************************************************/
int main(void)
{
init_OSC();
init_dsPIC();
init_DAC();
init_ADC();
while(1)
	{
	val=convertADC()*64;
	}
return 0;
}


/**************************************Sous-programmes d'interruption********************************************/
void __attribute__((interrupt, no_auto_psv)) _DAC1RInterrupt(void)
{
IFS4bits.DAC1RIF = 0; 					//Clear Right Channel Interrupt Flag 
DAC1RDAT = val;	 
}


void __attribute__((interrupt, no_auto_psv)) _DAC1LInterrupt(void)
{
IFS4bits.DAC1LIF = 0; 				//Clear Right Channel Interrupt Flag 
DAC1LDAT = val;	 
}

void __attribute__((interrupt, no_auto_psv)) _ADC1Interrupt(void)
{
//IFS4bits.DAC1LIF = 0; 				//Clear Right Channel Interrupt Flag 
//DAC1LDAT = val;	 
}
