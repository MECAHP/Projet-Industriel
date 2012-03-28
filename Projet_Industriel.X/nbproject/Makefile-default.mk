#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
# Adding MPLAB X bin directory to path
PATH:=/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/Integration.o ${OBJECTDIR}/src/fonction_ADC.o ${OBJECTDIR}/src/fonction_DAC.o ${OBJECTDIR}/src/init_OSCILLATOR.o ${OBJECTDIR}/src/init_dsPIC.o ${OBJECTDIR}/src/main.o

# Object Files
OBJECTFILES=${OBJECTDIR}/src/Integration.o ${OBJECTDIR}/src/fonction_ADC.o ${OBJECTDIR}/src/fonction_DAC.o ${OBJECTDIR}/src/init_OSCILLATOR.o ${OBJECTDIR}/src/init_dsPIC.o ${OBJECTDIR}/src/main.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC="/Applications/microchip/mplabc30/v3.30c/bin/pic30-gcc"
# MP_BC is not defined
MP_AS="/Applications/microchip/mplabc30/v3.30c/bin/pic30-as"
MP_LD="/Applications/microchip/mplabc30/v3.30c/bin/pic30-ld"
MP_AR="/Applications/microchip/mplabc30/v3.30c/bin/pic30-ar"
DEP_GEN=${MP_JAVA_PATH}java -jar "/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
# MP_BC_DIR is not defined
MP_AS_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
MP_LD_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
MP_AR_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out

MP_PROCESSOR_OPTION=33FJ128GP802
MP_LINKER_FILE_OPTION=,--script="lkr/p33FJ128GP802.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o.ok ${OBJECTDIR}/src/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c  
	
${OBJECTDIR}/src/init_OSCILLATOR.o: src/init_OSCILLATOR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/init_OSCILLATOR.o.d 
	@${RM} ${OBJECTDIR}/src/init_OSCILLATOR.o.ok ${OBJECTDIR}/src/init_OSCILLATOR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/init_OSCILLATOR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_OSCILLATOR.o.d" -o ${OBJECTDIR}/src/init_OSCILLATOR.o src/init_OSCILLATOR.c  
	
${OBJECTDIR}/src/Integration.o: src/Integration.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/Integration.o.d 
	@${RM} ${OBJECTDIR}/src/Integration.o.ok ${OBJECTDIR}/src/Integration.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/Integration.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/Integration.o.d" -o ${OBJECTDIR}/src/Integration.o src/Integration.c  
	
${OBJECTDIR}/src/fonction_DAC.o: src/fonction_DAC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/fonction_DAC.o.d 
	@${RM} ${OBJECTDIR}/src/fonction_DAC.o.ok ${OBJECTDIR}/src/fonction_DAC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/fonction_DAC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/fonction_DAC.o.d" -o ${OBJECTDIR}/src/fonction_DAC.o src/fonction_DAC.c  
	
${OBJECTDIR}/src/fonction_ADC.o: src/fonction_ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/fonction_ADC.o.d 
	@${RM} ${OBJECTDIR}/src/fonction_ADC.o.ok ${OBJECTDIR}/src/fonction_ADC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/fonction_ADC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/fonction_ADC.o.d" -o ${OBJECTDIR}/src/fonction_ADC.o src/fonction_ADC.c  
	
${OBJECTDIR}/src/init_dsPIC.o: src/init_dsPIC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/init_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/src/init_dsPIC.o.ok ${OBJECTDIR}/src/init_dsPIC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/init_dsPIC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_dsPIC.o.d" -o ${OBJECTDIR}/src/init_dsPIC.o src/init_dsPIC.c  
	
else
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o.ok ${OBJECTDIR}/src/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c  
	
${OBJECTDIR}/src/init_OSCILLATOR.o: src/init_OSCILLATOR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/init_OSCILLATOR.o.d 
	@${RM} ${OBJECTDIR}/src/init_OSCILLATOR.o.ok ${OBJECTDIR}/src/init_OSCILLATOR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/init_OSCILLATOR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_OSCILLATOR.o.d" -o ${OBJECTDIR}/src/init_OSCILLATOR.o src/init_OSCILLATOR.c  
	
${OBJECTDIR}/src/Integration.o: src/Integration.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/Integration.o.d 
	@${RM} ${OBJECTDIR}/src/Integration.o.ok ${OBJECTDIR}/src/Integration.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/Integration.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/Integration.o.d" -o ${OBJECTDIR}/src/Integration.o src/Integration.c  
	
${OBJECTDIR}/src/fonction_DAC.o: src/fonction_DAC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/fonction_DAC.o.d 
	@${RM} ${OBJECTDIR}/src/fonction_DAC.o.ok ${OBJECTDIR}/src/fonction_DAC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/fonction_DAC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/fonction_DAC.o.d" -o ${OBJECTDIR}/src/fonction_DAC.o src/fonction_DAC.c  
	
${OBJECTDIR}/src/fonction_ADC.o: src/fonction_ADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/fonction_ADC.o.d 
	@${RM} ${OBJECTDIR}/src/fonction_ADC.o.ok ${OBJECTDIR}/src/fonction_ADC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/fonction_ADC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/fonction_ADC.o.d" -o ${OBJECTDIR}/src/fonction_ADC.o src/fonction_ADC.c  
	
${OBJECTDIR}/src/init_dsPIC.o: src/init_dsPIC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/init_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/src/init_dsPIC.o.ok ${OBJECTDIR}/src/init_dsPIC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/src/init_dsPIC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_dsPIC.o.d" -o ${OBJECTDIR}/src/init_dsPIC.o src/init_dsPIC.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Projet_Industriel.X.${IMAGE_TYPE}.out -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard $(addsuffix .d, ${OBJECTFILES}))
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
