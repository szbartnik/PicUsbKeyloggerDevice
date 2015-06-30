/********************************************************************
 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PIC(R) Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *******************************************************************/

#ifndef SYSTEM_H
#define SYSTEM_H

#include <p24FJ64GB002.h>
#include <stdbool.h>

#include <buttons.h>
#include <leds.h>
#include <adc.h>

#include <io_mapping.h>
#include <power.h>

#include <../usb_config.h>

#define MAIN_RETURN int

// Definition for system clock
#define SYS_CLK_FrequencySystemGet()        8000000
// Definition for peripheral clock
#define SYS_CLK_FrequencyPeripheralGet()    SYS_CLK_FrequencySystemGet()
// Definition for instruction clock
#define SYS_CLK_FrequencyInstructionGet()   (SYS_CLK_FrequencySystemGet() / 2)

// Description: A delay prescaler
#define FILEIO_SD_DELAY_PRESCALER       (uint8_t)8

// Description: An approximation of the number of cycles per delay loop of overhead
#define FILEIO_SD_DELAY_OVERHEAD        (uint8_t)5

// Description: An approximate calculation of how many times to loop to delay 1 ms in the Delayms function
#define FILEIO_SD_MILLISECOND_DELAY     (uint16_t)((SYS_CLK_FrequencyInstructionGet()/FILEIO_SD_DELAY_PRESCALER/(uint16_t)1000) - FILEIO_SD_DELAY_OVERHEAD)

void Delayms(uint8_t milliseconds);

/*** System States **************************************************/
typedef enum
{
    SYSTEM_STATE_USB_START,
    SYSTEM_STATE_USB_SUSPEND,
    SYSTEM_STATE_USB_RESUME
} SYSTEM_STATE;

/*********************************************************************
* Function: void SYSTEM_Initialize( SYSTEM_STATE state )
*
* Overview: Initializes the system.
*
* PreCondition: None
*
* Input:  SYSTEM_STATE - the state to initialize the system into
*
* Output: None
*
********************************************************************/
void SYSTEM_Initialize( SYSTEM_STATE state );

/*********************************************************************
* Function: void SYSTEM_Tasks(void)
*
* Overview: Runs system level tasks that keep the system running
*
* PreCondition: System has been initalized with SYSTEM_Initialize()
*
* Input: None
*
* Output: None
*
********************************************************************/
//void SYSTEM_Tasks(void);
#define SYSTEM_Tasks()

#endif //SYSTEM_H
