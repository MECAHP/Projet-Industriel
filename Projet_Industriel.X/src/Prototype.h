//Déclaration des prototypes des fonctions

void init_OSC(void);				//Initialisation de l'oscillateur
void init_dsPIC(void);				//Init. du dsPIC
void init_DAC(void);				//Init. du CNA
void init_ADC(void);				//Init. du CAN
int convertADC(void);				//Renvoi la valeur converti en entrée du CAN
void __attribute__((interrupt, no_auto_psv)) _DAC1RInterrupt(void);
void __attribute__((interrupt, no_auto_psv)) _DAC1LInterrupt(void);

