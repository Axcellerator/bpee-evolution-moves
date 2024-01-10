.gba
.thumb

.open "rom.gba", "test.gba", 0x08000000

.org allocation
.area allocation_size
    .word 0xFEFEFEFE
    .importobj "build/linked.o"
    .word 0xFEFEFEFE
.endarea

.org 0x0813EA2A
.area 0x12, 0xFE
    ldr r3, =Task_EvolutionScene__Hook |1
    bx r3
    .pool
.endarea

.close
