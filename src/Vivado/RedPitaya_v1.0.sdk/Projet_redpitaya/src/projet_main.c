/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xparameters.h"
#include "platform.h"
#include "xil_io.h"
#include "xuartps_hw.h"
#include "xuartlite_l.h"

#include "xgpio.h"


#define uchar unsigned char
#define uint unsigned short

#define UART_0_DEVICE_ID 0xE0000000


char uart0_inbyte(void){
	return XUartPs_RecvByte(UART_0_DEVICE_ID);
}

void readStringUART(char *buffer)
{
  //char i;    // Length counter
  unsigned char data;

  do{
    while(XUartLite_IsReceiveEmpty(UART_0_DEVICE_ID)); // Wait for data to be received

    data = uart0_inbyte();    // Get a character from the USART
                           // and save in the string
    *buffer = data;
    buffer++;              // Increment the string pointer
  }while(data!='\0');
}

char uart0_outbyte(char c){

	XUartPs_SendByte(UART_0_DEVICE_ID,c);
}

void print_chaine(const char *ptr){

	while(*ptr){
		XUartPs_SendByte(UART_0_DEVICE_ID,*ptr++);
	}

}



int main()
{
	//XGpio_Config *GPIO_Config;
	XGpio my_Gpio_Indices,my_Gpio_Sel,my_Gpio_phase;
	// Declare some variables that we will use later
	int StatusGpio_Indices,StatusGpio_Sel,StatusGpio_phase;
	//unsigned int DIP_value;

	//init_platform();
	// Lookup the config information and store it in the struct "GPIO_Config"
	XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_LookupConfig(XPAR_AXI_GPIO_1_DEVICE_ID);
	XGpio_LookupConfig(XPAR_AXI_GPIO_2_DEVICE_ID);

	// Initialise the GPIO using a reference to the my_Gpio struct,
	// the struct "GPIO_Config", and also a base address value.
	StatusGpio_Indices = XGpio_Initialize(&my_Gpio_Indices, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (StatusGpio_Indices != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	StatusGpio_Sel = XGpio_Initialize(&my_Gpio_phase, XPAR_AXI_GPIO_1_DEVICE_ID);
	if (StatusGpio_Sel != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	StatusGpio_phase = XGpio_Initialize(&my_Gpio_Sel, XPAR_AXI_GPIO_2_DEVICE_ID);
	if (StatusGpio_phase != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	// Set the direction of the bits in the GPIO.
	// The lower (LSB) 8 bits of the GPIO are for the DIP Switches (inputs).
	// The upper (MSB) 8 bits of the GPIO are for the LEDs (outputs).
	XGpio_SetDataDirection(&my_Gpio_Indices, 1, 0x00); //0x0 outputs
	XGpio_SetDataDirection(&my_Gpio_phase, 1, 0x00); //0x0 outputs
	XGpio_SetDataDirection(&my_Gpio_Sel, 1, 0x00); //0x0 outputs





	char *stringg;
	uchar rxdb,buff='w';
	//print_chaine("Hello World\n\r");
	XUartLite_SetControlReg(XPAR_UARTLITE_0_BASEADDR,0x10);
	//XUartLite_WriteReg(XPAR_UARTLITE_0_BASEADDR, XUL_CONTROL_REG_OFFSET, 0x10);
	XUartLite_SetControlReg(XPAR_UARTLITE_1_BASEADDR,0x10);
	//XUartLite_WriteReg(XPAR_UARTLITE_1_BASEADDR, XUL_CONTROL_REG_OFFSET, 0x10);
	void affichageMenu(void)
	{

		 print_chaine("---Menu---Edward PAEZ 2021\n\n");
	     print_chaine("Generation AM FM!\n");
	     print_chaine("cmd: Pour AM 'ax' avec x entre 0 1 2...9\n");
	     print_chaine("cmd: Pour FM 'fx' avec x entre 0 1 2...F\n");
	     print_chaine("cmd: Pour Ph 'px' avec x entre 0 1 2...F\n");
	}


	affichageMenu();
	while(1){
		//affichageMenu();
		print_chaine("_______________________________________\n");
		rxdb=uart0_inbyte(); // in
		//readStringUART(stringg);

		//printf(" %s\n\n", stringg);
		XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,rxdb);

		rxdb=XUartLite_RecvByte(XPAR_UARTLITE_1_BASEADDR);

		XUartLite_SendByte(XPAR_UARTLITE_1_BASEADDR,rxdb);
		rxdb=XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
	    switch(rxdb)
	    {
	                     case 'a':
	                    	 XGpio_DiscreteWrite(&my_Gpio_Sel, 1, 0x1);
	                    	 do{
	                    		 	buff=uart0_inbyte(); // in
	                    			XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,buff);

	                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_1_BASEADDR);

	                    			XUartLite_SendByte(XPAR_UARTLITE_1_BASEADDR,buff);
	                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
	                    	 }while(!(buff>='0')&&!(buff<='9'));
	                    		switch(buff)
	                    			    {
	                    			        case '0':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.1\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x00);
	                    			            break;

	                    			        case '1':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.2\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x01);
	                    			            break;

	                    			        case '2':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.3\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x02);
	                    			            break;

	                    			        case '3':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.4\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x03);
	                    			            break;

	                    			        case '4':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x04);
	                    			            break;
	                    			        case '5':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.6\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x05);
	                    			            break;

	                    			        case '6':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.7\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x06);
	                    			            break;

	                    			        case '7':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.8\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x07);
	                    			            break;

	                    			        case '8':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=0.9\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x08);
	                    			            break;

	                    			        case '9':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("m=1.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x09);
	                    			            break;
	                    			    }

	                          break;
	                     case 'f':
	                    	 //print_chaine("Vous avez choisis FM!");
	                    	 //affichageMenuAM();
	                    	 XGpio_DiscreteWrite(&my_Gpio_Sel, 1, 0x0);

	                    	 do{
	                    		 	buff=uart0_inbyte(); // in
	                    			XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,buff);

	                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_1_BASEADDR);

	                    			XUartLite_SendByte(XPAR_UARTLITE_1_BASEADDR,buff);
	                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
	                    	 }while(!(buff>='0')&&!(buff<='f'));
	                    		switch(buff)
	                    			    {
	                    			        case '0':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=0.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x00);
	                    			            break;

	                    			        case '1':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=1.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x01);
	                    			            break;

	                    			        case '2':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=1.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x02);
	                    			            break;

	                    			        case '3':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=2.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x03);
	                    			            break;

	                    			        case '4':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=2.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x04);
	                    			            break;
	                    			        case '5':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=3.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x05);
	                    			            break;

	                    			        case '6':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=3.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x06);
	                    			            break;

	                    			        case '7':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=4.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x07);
	                    			            break;

	                    			        case '8':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=4.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x08);
	                    			            break;

	                    			        case '9':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=5.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x09);
	                    			            break;
	                    			        case 'a':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=5.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0A);
	                    			            break;
	                    			        case 'b':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=6.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0B);
	                    			            break;

	                    			        case 'c':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=6.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0C);
	                    			            break;

	                    			        case 'd':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=7.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0D);
	                    			            break;

	                    			        case 'e':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=7.5\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0E);
	                    			            break;

	                    			        case 'f':
	                    			        	print_chaine("\n");
	                    			        	//uart0_outbyte(buff);
	                    			        	print_chaine("b=8.0\n");
	                    			        	XGpio_DiscreteWrite(&my_Gpio_Indices, 1, 0x0F);
	                    			            break;
	                    			    }
	                          break;
	                    		case 'p':
	                    			                    	 //print_chaine("Vous avez choisis phase!");
	                    			                    	 //affichageMenuAM();

	                    			                    	 do{
	                    			                    		 	buff=uart0_inbyte(); // in
	                    			                    			XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,buff);

	                    			                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_1_BASEADDR);

	                    			                    			XUartLite_SendByte(XPAR_UARTLITE_1_BASEADDR,buff);
	                    			                    			buff=XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
	                    			                    	 }while(!(buff>='0')&&!(buff<='f'));
	                    			                    		switch(buff)
	                    			                    			    {
	                    			                    			        case '0':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=0g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x00);
	                    			                    			            break;

	                    			                    			        case '1':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=10g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x01);
	                    			                    			            break;

	                    			                    			        case '2':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=20g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x02);
	                    			                    			            break;

	                    			                    			        case '3':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=30g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x03);
	                    			                    			            break;

	                    			                    			        case '4':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=40g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x04);
	                    			                    			            break;
	                    			                    			        case '5':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=50g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x05);
	                    			                    			            break;

	                    			                    			        case '6':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=60g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x06);
	                    			                    			            break;

	                    			                    			        case '7':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=70g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x07);
	                    			                    			            break;

	                    			                    			        case '8':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=80g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x08);
	                    			                    			            break;

	                    			                    			        case '9':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=90g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x09);
	                    			                    			            break;
	                    			                    			        case 'a':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=100g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0A);
	                    			                    			            break;
	                    			                    			        case 'b':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=110g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0B);
	                    			                    			            break;

	                    			                    			        case 'c':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=120g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0C);
	                    			                    			            break;

	                    			                    			        case 'd':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=130g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0D);
	                    			                    			            break;

	                    			                    			        case 'e':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=150g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0E);
	                    			                    			            break;

	                    			                    			        case 'f':
	                    			                    			        	print_chaine("\n");
	                    			                    			        	//uart0_outbyte(buff);
	                    			                    			        	print_chaine("phase=180g\n");
	                    			                    			        	XGpio_DiscreteWrite(&my_Gpio_phase, 1, 0x0F);
	                    			                    			            break;
	                    			                    			    }
	                    			                          break;
	    }

		}


    return 0;
}
