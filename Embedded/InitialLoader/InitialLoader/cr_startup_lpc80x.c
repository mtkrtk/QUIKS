//*****************************************************************************
// LPC80x Microcontroller Startup code for use with MCUXpresso IDE
//
// Version : 180105
//*****************************************************************************
//
// Copyright(C) NXP Semiconductors, 2017-18
// All rights reserved.
//
// Software that is described herein is for illustrative purposes only
// which provides customers with programming information regarding the
// LPC products.  This software is supplied "AS IS" without any warranties of
// any kind, and NXP Semiconductors and its licensor disclaim any and
// all warranties, express or implied, including all implied warranties of
// merchantability, fitness for a particular purpose and non-infringement of
// intellectual property rights.  NXP Semiconductors assumes no responsibility
// or liability for the use of the software, conveys no license or rights under any
// patent, copyright, mask work right, or any other intellectual property rights in
// or to any products. NXP Semiconductors reserves the right to make changes
// in the software without notification. NXP Semiconductors also makes no
// representation or warranty that such application will be suitable for the
// specified use without further testing or modification.
//
// Permission to use, copy, modify, and distribute this software and its
// documentation is hereby granted, under NXP Semiconductors' and its
// licensor's relevant copyrights in the software, without fee, provided that it
// is used in conjunction with NXP Semiconductors microcontrollers.  This
// copyright, permission, and disclaimer notice must appear in all copies of
// this code.
//*****************************************************************************


#if defined (DEBUG)
#pragma GCC push_options
#pragma GCC optimize ("Og")
#endif // (DEBUG)

#if defined (__cplusplus)
#ifdef __REDLIB__
#error Redlib does not support C++
#else
//*****************************************************************************
//
// The entry point for the C++ library startup
//
//*****************************************************************************
extern "C" {
    extern void __libc_init_array(void);
}
#endif
#endif

#define WEAK __attribute__ ((weak))
#define ALIAS(f) __attribute__ ((weak, alias (#f)))

//*****************************************************************************
#if defined (__cplusplus)
extern "C" {
#endif

//*****************************************************************************
#if defined (__USE_CMSIS) || defined (__USE_LPCOPEN)
// Declaration of external SystemInit function
extern void SystemInit(void);
#endif

//*****************************************************************************
// Patch the AEABI integer divide functions to use MCU's romdivide library
#ifdef __USE_ROMDIVIDE
// Location in memory that holds the address of the ROM Driver table
#define PTR_ROM_DRIVER_TABLE ((unsigned int *)(0x0F001FF8))
// Variables to store addresses of idiv and udiv functions within MCU ROM
unsigned int *pDivRom_idiv;
unsigned int *pDivRom_uidiv;
#endif

//*****************************************************************************
//
// Forward declaration of the default handlers. These are aliased.
// When the application defines a handler (with the same name), this will
// automatically take precedence over these weak definitions
//
//*****************************************************************************
     void ResetISR(void);
WEAK void NMI_Handler(void);
WEAK void HardFault_Handler(void);
WEAK void SVC_Handler(void);
WEAK void PendSV_Handler(void);
WEAK void SysTick_Handler(void);
WEAK void IntDefaultHandler(void);

//*****************************************************************************
//
// Forward declaration of the specific IRQ handlers. These are aliased
// to the IntDefaultHandler, which is a 'forever' loop. When the application
// defines a handler (with the same name), this will automatically take
// precedence over these weak definitions
//
//*****************************************************************************
void SPI0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void DAC0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void UART0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void UART1_IRQHandler(void)   ALIAS(IntDefaultHandler);
void I2C1_IRQHandler(void)   ALIAS(IntDefaultHandler);
void I2C0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void MRT_IRQHandler(void)   ALIAS(IntDefaultHandler);
void CMP_IRQHandler(void)   ALIAS(IntDefaultHandler);
void WDT_IRQHandler(void)   ALIAS(IntDefaultHandler);
void BOD_IRQHandler(void)   ALIAS(IntDefaultHandler);
void FLASH_IRQHandler(void)   ALIAS(IntDefaultHandler);
void WKT_IRQHandler(void)   ALIAS(IntDefaultHandler);
void ADC_SEQA_IRQHandler(void)   ALIAS(IntDefaultHandler);
void ADC_SEQB_IRQHandler(void)   ALIAS(IntDefaultHandler);
void ADC_THCMP_IRQHandler(void)   ALIAS(IntDefaultHandler);
void ADC_OVR_IRQHandler(void)   ALIAS(IntDefaultHandler);
void CTIMER0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT0_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT1_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT2_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT3_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT4_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT5_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT6_IRQHandler(void)   ALIAS(IntDefaultHandler);
void PININT7_IRQHandler(void)   ALIAS(IntDefaultHandler);

//*****************************************************************************
//
// The entry point for the application.
// __main() is the entry point for Redlib based applications
// main() is the entry point for Newlib based applications
//
//*****************************************************************************
#if defined (__REDLIB__)
extern void __main(void);
#else
extern int main(void);
#endif
//*****************************************************************************
//
// External declaration for the pointer to the stack top from the Linker Script
//
//*****************************************************************************
extern void _vStackTop(void);

//*****************************************************************************
//
// External declaration for LPC MCU vector table checksum from  Linker Script
//
//*****************************************************************************
WEAK extern void __valid_user_code_checksum();

//*****************************************************************************
#if defined (__cplusplus)
} // extern "C"
#endif
//*****************************************************************************
//
// The vector table.
// This relies on the linker script to place at correct location in memory.
//
//*****************************************************************************
extern void (* const g_pfnVectors[])(void);
__attribute__ ((used,section(".isr_vector")))
void (* const g_pfnVectors[])(void) = {
    // Core Level - CM0plus
    &_vStackTop, // The initial stack pointer
    ResetISR,                       // The reset handler
    NMI_Handler,                    // The NMI handler
    HardFault_Handler,              // The hard fault handler
    0,                              // Reserved
    0,                              // Reserved
    0,                              // Reserved
    __valid_user_code_checksum,     // LPC MCU Checksum
    0,                              // Reserved
    0,                              // Reserved
    0,                              // Reserved
    SVC_Handler,                    // SVCall handler
    0,                              // Reserved
    0,                              // Reserved
    PendSV_Handler,                 // The PendSV handler
    SysTick_Handler,                // The SysTick handler

    // Chip Level - LPC80x
    SPI0_IRQHandler,                //  0 - SPI0
    0,                              //  1 - Reserved
    DAC0_IRQHandler,                //  2 - DAC0
    UART0_IRQHandler,               //  3 - UART0
    UART1_IRQHandler,               //  4 - UART1
    0,                              //  5 - Reserved
    0,                              //  6 - Reserved
    I2C1_IRQHandler,                //  7 - I2C1
    I2C0_IRQHandler,                //  8 - I2C0
    0,                              //  9 - Reserved
    MRT_IRQHandler,                 // 10 - Multi-rate timer
    CMP_IRQHandler,                 // 11 - Analog comparator / Cap Touch
    WDT_IRQHandler,                 // 12 - Windowed watchdog timer
    BOD_IRQHandler,                 // 13 - BOD
    FLASH_IRQHandler,               // 14 - FLASH
    WKT_IRQHandler,                 // 15 - Self wake-up timer
    ADC_SEQA_IRQHandler,            // 16 - ADC seq A
    ADC_SEQB_IRQHandler,            // 17 - ADC_seq B
    ADC_THCMP_IRQHandler,           // 18 - ADC threshold compare
    ADC_OVR_IRQHandler,             // 19 - ADC overrun
    0,                              // 20 - Reserved
    0,                              // 21 - Reserved
    0,                              // 22 - Reserved
    CTIMER0_IRQHandler,             // 23 - Timer 0
    PININT0_IRQHandler,             // 24 - PININT0
    PININT1_IRQHandler,             // 25 - PININT1
    PININT2_IRQHandler,             // 26 - PININT2
    PININT3_IRQHandler,             // 27 - PININT3
    PININT4_IRQHandler,             // 28 - PININT4
    PININT5_IRQHandler,             // 29 - PININT5
    PININT6_IRQHandler,             // 30 - PININT6
    PININT7_IRQHandler              // 31 - PININT7
}; /* End of g_pfnVectors */

//*****************************************************************************
// Functions to carry out the initialization of RW and BSS data sections. These
// are written as separate functions rather than being inlined within the
// ResetISR() function in order to cope with MCUs with multiple banks of
// memory.
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void data_init(unsigned int romstart, unsigned int start, unsigned int len) {
    unsigned int *pulDest = (unsigned int*) start;
    unsigned int *pulSrc = (unsigned int*) romstart;
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
        *pulDest++ = *pulSrc++;
}

__attribute__ ((section(".after_vectors")))
void bss_init(unsigned int start, unsigned int len) {
    unsigned int *pulDest = (unsigned int*) start;
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
        *pulDest++ = 0;
}

//*****************************************************************************
// The following symbols are constructs generated by the linker, indicating
// the location of various points in the "Global Section Table". This table is
// created by the linker via the Code Red managed linker script mechanism. It
// contains the load address, execution address and length of each RW data
// section and the execution and length of each BSS (zero initialized) section.
//*****************************************************************************
extern unsigned int __data_section_table;
extern unsigned int __data_section_table_end;
extern unsigned int __bss_section_table;
extern unsigned int __bss_section_table_end;


//*****************************************************************************
// Reset entry point for your code.
// Sets up a simple runtime environment and initializes the C/C++
// library.
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void
ResetISR(void) {
    main();
}

//*****************************************************************************
// Default exception handlers. Override the ones here by defining your own
// handler routines in your application code.
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void NMI_Handler(void)
{ while(1) {}
}

__attribute__ ((section(".after_vectors")))
void HardFault_Handler(void)
{ while(1) {}
}

__attribute__ ((section(".after_vectors")))
void SVC_Handler(void)
{ while(1) {}
}

__attribute__ ((section(".after_vectors")))
void PendSV_Handler(void)
{ while(1) {}
}

__attribute__ ((section(".after_vectors")))
void SysTick_Handler(void)
{ while(1) {}
}

//*****************************************************************************
//
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.
//
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void IntDefaultHandler(void)
{ while(1) {}
}

#if defined (DEBUG)
#pragma GCC pop_options
#endif // (DEBUG)