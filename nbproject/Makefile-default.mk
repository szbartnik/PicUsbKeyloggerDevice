#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=microchip_usb/usb_device.c microchip_usb/usb_device_hid.c system_config/buttons.c system_config/leds.c system_config/system.c system_config/timer_1ms.c app_device_keyboard.c app_led_usb_status.c main.c usb_descriptors.c uart1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/microchip_usb/usb_device.o ${OBJECTDIR}/microchip_usb/usb_device_hid.o ${OBJECTDIR}/system_config/buttons.o ${OBJECTDIR}/system_config/leds.o ${OBJECTDIR}/system_config/system.o ${OBJECTDIR}/system_config/timer_1ms.o ${OBJECTDIR}/app_device_keyboard.o ${OBJECTDIR}/app_led_usb_status.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/uart1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/microchip_usb/usb_device.o.d ${OBJECTDIR}/microchip_usb/usb_device_hid.o.d ${OBJECTDIR}/system_config/buttons.o.d ${OBJECTDIR}/system_config/leds.o.d ${OBJECTDIR}/system_config/system.o.d ${OBJECTDIR}/system_config/timer_1ms.o.d ${OBJECTDIR}/app_device_keyboard.o.d ${OBJECTDIR}/app_led_usb_status.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/uart1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/microchip_usb/usb_device.o ${OBJECTDIR}/microchip_usb/usb_device_hid.o ${OBJECTDIR}/system_config/buttons.o ${OBJECTDIR}/system_config/leds.o ${OBJECTDIR}/system_config/system.o ${OBJECTDIR}/system_config/timer_1ms.o ${OBJECTDIR}/app_device_keyboard.o ${OBJECTDIR}/app_led_usb_status.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/uart1.o

# Source Files
SOURCEFILES=microchip_usb/usb_device.c microchip_usb/usb_device_hid.c system_config/buttons.c system_config/leds.c system_config/system.c system_config/timer_1ms.c app_device_keyboard.c app_led_usb_status.c main.c usb_descriptors.c uart1.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GB002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GB002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/microchip_usb/usb_device.o: microchip_usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/microchip_usb" 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip_usb/usb_device.c  -o ${OBJECTDIR}/microchip_usb/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip_usb/usb_device.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/microchip_usb/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/microchip_usb/usb_device_hid.o: microchip_usb/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/microchip_usb" 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip_usb/usb_device_hid.c  -o ${OBJECTDIR}/microchip_usb/usb_device_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip_usb/usb_device_hid.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/microchip_usb/usb_device_hid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/buttons.o: system_config/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/buttons.o.d 
	@${RM} ${OBJECTDIR}/system_config/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/buttons.c  -o ${OBJECTDIR}/system_config/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/buttons.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/leds.o: system_config/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/leds.o.d 
	@${RM} ${OBJECTDIR}/system_config/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/leds.c  -o ${OBJECTDIR}/system_config/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/leds.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/system.o: system_config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/system.o.d 
	@${RM} ${OBJECTDIR}/system_config/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/system.c  -o ${OBJECTDIR}/system_config/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/timer_1ms.o: system_config/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/system_config/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/timer_1ms.c  -o ${OBJECTDIR}/system_config/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/timer_1ms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/app_device_keyboard.o: app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_keyboard.o.d 
	@${RM} ${OBJECTDIR}/app_device_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_device_keyboard.c  -o ${OBJECTDIR}/app_device_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/app_device_keyboard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/app_device_keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/app_led_usb_status.o: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_led_usb_status.c  -o ${OBJECTDIR}/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/app_led_usb_status.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/app_led_usb_status.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_descriptors.c  -o ${OBJECTDIR}/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart1.o: uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart1.o.d 
	@${RM} ${OBJECTDIR}/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart1.c  -o ${OBJECTDIR}/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/microchip_usb/usb_device.o: microchip_usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/microchip_usb" 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip_usb/usb_device.c  -o ${OBJECTDIR}/microchip_usb/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip_usb/usb_device.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/microchip_usb/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/microchip_usb/usb_device_hid.o: microchip_usb/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/microchip_usb" 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/microchip_usb/usb_device_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip_usb/usb_device_hid.c  -o ${OBJECTDIR}/microchip_usb/usb_device_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip_usb/usb_device_hid.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/microchip_usb/usb_device_hid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/buttons.o: system_config/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/buttons.o.d 
	@${RM} ${OBJECTDIR}/system_config/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/buttons.c  -o ${OBJECTDIR}/system_config/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/buttons.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/leds.o: system_config/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/leds.o.d 
	@${RM} ${OBJECTDIR}/system_config/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/leds.c  -o ${OBJECTDIR}/system_config/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/leds.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/system.o: system_config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/system.o.d 
	@${RM} ${OBJECTDIR}/system_config/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/system.c  -o ${OBJECTDIR}/system_config/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/system.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system_config/timer_1ms.o: system_config/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system_config" 
	@${RM} ${OBJECTDIR}/system_config/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/system_config/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system_config/timer_1ms.c  -o ${OBJECTDIR}/system_config/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system_config/timer_1ms.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/system_config/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/app_device_keyboard.o: app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_keyboard.o.d 
	@${RM} ${OBJECTDIR}/app_device_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_device_keyboard.c  -o ${OBJECTDIR}/app_device_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/app_device_keyboard.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/app_device_keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/app_led_usb_status.o: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_led_usb_status.c  -o ${OBJECTDIR}/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/app_led_usb_status.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/app_led_usb_status.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_descriptors.c  -o ${OBJECTDIR}/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart1.o: uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart1.o.d 
	@${RM} ${OBJECTDIR}/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart1.c  -o ${OBJECTDIR}/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart1.o.d"        -g -omf=elf -I"microchip_usb" -I"system_config" -O1 -I"microchip_usb" -I"system_config" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -I"microchip_usb" -I"system_config"  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -I"microchip_usb" -I"system_config" -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Keylogger-device.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
