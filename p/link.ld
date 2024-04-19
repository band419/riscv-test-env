OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x80000000;
  .text.init : { *(.text.init) }
  . = ALIGN(0x1000);
  .text : { *(.text) }
  . = ALIGN(0x1000);

  . = 0xa0000000;
  .data : { *(.data) }
  .bss : { *(.bss) }
  _end = .;
  
  . = 0xC0000000;
  _tohost = .;
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
}

