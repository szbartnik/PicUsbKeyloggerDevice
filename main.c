#include <stdint.h>
#include <system.h>
#include "timer.h"
#include "uart1.h"
#include "system_config.h"

#include "microchip_usb/usb.h"
#include "microchip_usb/usb_device_hid.h"

/* Demo project includes */
#include "app_led_usb_status.h"
#include "app_device_keyboard.h"



// *****************************************************************************
// *****************************************************************************
// Section: File Scope or Global Constants
// *****************************************************************************
// *****************************************************************************
volatile signed int SOFCounter = 0;


// *****************************************************************************
// *****************************************************************************
// Section: File Scope Data Types
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Macros or Functions
// *****************************************************************************
// *****************************************************************************

int main(void)
{
    Delayms(250);
    Delayms(250);
    
    SYSTEM_Initialize( SYSTEM_STATE_USB_START );

    USBDeviceInit();
    USBDeviceAttach();

    // #########################################
    // # UART CONFIGURATION 
    // #########################################
    //OSCCON = 0x2200;	 //Use primary, no divide FCY = 10Mhz/2 = 5Mhz
    //CLKDIV	=	0x0000;	 //do not divide
    
    AD1PCFGL = 0xFFFF;
    //Set up I/O Port
    TRISAbits.TRISA0 = 0;
    TRISAbits.TRISA1 = 1;

    RPINR18bits.U1RXR = 6; // UART1 RX RP6
    RPOR2bits.RP5R    =	3; // UART1 TX RP5 (function 3)

    // FCY = 8MHz * 4 / 2 = 16MHz
    // BRGx = 16*10^6/(16*19200)-1 = 51
    UART1Init(51);	 //Initiate UART1 to 19200 at 8MHz OSC + PLL
    Delayms(250);
    Delayms(250);
    Delayms(250);
    Delayms(250);
    
    while(1)
    {
        SYSTEM_Tasks();

        #if defined(USB_POLLING)
        /* Check bus status and service USB interrupts.  Interrupt or polling
         * method.  If using polling, must call this function periodically.
         * This function will take care of processing and responding to SETUP
         * transactions (such as during the enumeration process when you first
         * plug in).  USB hosts require that USB devices should accept and
         * process SETUP packets in a timely fashion.  Therefore, when using
         * polling, this function should be called regularly (such as once every
         * 1.8ms or faster** [see inline code comments in usb_device.c for
         * explanation when "or faster" applies])  In most cases, the
         * USBDeviceTasks() function does not take very long to execute
         * (ex: <100 instruction cycles) before it returns. */
        USBDeviceTasks();
        #endif

        /* If the USB device isn't configured yet, we can't really do anything
         * else since we don't have a host to talk to.  So jump back to the
         * top of the while loop. */
        if( USBGetDeviceState() < CONFIGURED_STATE )
        {
            /* Jump back to the top of the while loop. */
            continue;
        }

        /* If we are currently suspended, then we need to see if we need to
         * issue a remote wakeup.  In either case, we shouldn't process any
         * keyboard commands since we aren't currently communicating to the host
         * thus just continue back to the start of the while loop. */
        if( USBIsDeviceSuspended()== true )
        {
            //Check if we should assert a remote wakeup request to the USB host,
            //when the user presses the pushbutton.
            if(BUTTON_IsPressed(BUTTON_USB_DEVICE_REMOTE_WAKEUP) == 0)
            {
                //Add code here to issue a resume signal.
            }

            /* Jump back to the top of the while loop. */
            continue;
        }

        /* Run the keyboard demo tasks. */
        APP_KeyboardTasks();
    }//end while
}//end main



bool USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, uint16_t size)
{
    switch((int)event)
    {
        case EVENT_TRANSFER:
            break;

        case EVENT_SOF:
            /* We are using the SOF as a timer to time the LED indicator.  Call
             * the LED update function here. */
            APP_LEDUpdateUSBStatus();
            if(SOFCounter < 32767)
            {
                SOFCounter++;
            }
            else
            {
                SOFCounter = 0;
            }
            break;

        case EVENT_SUSPEND:
            /* Update the LED status for the suspend event. */
            APP_LEDUpdateUSBStatus();
            break;

        case EVENT_RESUME:
            /* Update the LED status for the resume event. */
            APP_LEDUpdateUSBStatus();
            break;

        case EVENT_CONFIGURED:
            /* When the device is configured, we can (re)initialize the keyboard
             * demo code. */
            APP_KeyboardInit();
            break;

        case EVENT_SET_DESCRIPTOR:
            break;

        case EVENT_EP0_REQUEST:
            /* We have received a non-standard USB request.  The HID driver
             * needs to check to see if the request was for it. */
            USBCheckHIDRequest();
            break;

        case EVENT_BUS_ERROR:
            break;

        case EVENT_TRANSFER_TERMINATED:
            break;

        default:
            break;
    }
    return true;
}

/*******************************************************************************
 End of File
*/
