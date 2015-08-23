#ifndef UART1_H
#define	UART1_H

//prototypes

//Initiation
extern void UART1Init(int BAUDRATEREG1);

//UART transmit function
extern void  UART1PutChar(char Ch);

//UART receive function
extern char UART1GetChar();

// Customized for my usage receive function, returns if data available
bool Uart1GetCharCheck(char* data);

#endif	/* UART1_H */

