.include "macros.inc"

.section .init, "ax"

.balign 4

.global gTRKInterruptVectorTable
gTRKInterruptVectorTable:
    .asciz "Metrowerks Target Resident Kernel for PowerPC"
    .balign 4
    .skip 208

# 0x0100: System Reset Exception
    b       __TRK_reset
    .skip 252

# 0x0200: Machine Check Exception
    mtspr   0x111, r2
    mfspr   r2, 0x1A
    icbi    0, r2
    mfdar   r2
    dcbi    0, r2
    mfspr   r2, 0x111
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x200
    rfi
    .skip 180

# 0x0300: DSI Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x300
    rfi
    .skip 204

# 0x0400: ISI Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x400
    rfi
    .skip 204

# 0x0500: External Interrupt Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x500
    rfi
    .skip 204

# 0x0600: Alignment Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x600
    rfi
    .skip 204

# 0x0700: Program Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x700
    rfi
    .skip 204

# 0x0800: FPU Unavailable Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x800
    rfi
    .skip 204

# 0x0900: Decrementer Interrupt Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x900
    rfi
    .skip 716

# 0x0C00: System Call Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0xC00
    rfi
    .skip 204

# 0x0D00: Trace Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0xD00
    rfi
    .skip 204

# 0x0E00: FP Assist Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0xE00
    rfi
    .skip 204

# 0x0F00: Performance Monitor / 0x0F20: AltiVec Unavailable
    b       .L_perf_monitor
    .skip 28
# 0x0F20: AltiVec Unavailable
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0xF20
    rfi
.L_perf_monitor:
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0xF00
    rfi
    .skip 120

# 0x1000: PPC603E Instruction TLB Miss
    mtspr   0x111, r2
    mfcr    r2
    mtspr   0x112, r2
    mfmsr   r2
    andis.  r2, r2, 2
    beq     .L_pow_1000
    mfmsr   r2
    xoris   r2, r2, 2
    sync    0
    mtmsr   r2
    sync    0
    mtspr   0x111, r2
.L_pow_1000:
    mfspr   r2, 0x112
    mtcrf   0xFF, r2
    mfspr   r2, 0x111
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1000
    rfi
    .skip 144

# 0x1100: PPC603E Data Load TLB Miss
    mtspr   0x111, r2
    mfcr    r2
    mtspr   0x112, r2
    mfmsr   r2
    andis.  r2, r2, 2
    beq     .L_pow_1100
    mfmsr   r2
    xoris   r2, r2, 2
    sync    0
    mtmsr   r2
    sync    0
    mtspr   0x111, r2
.L_pow_1100:
    mfspr   r2, 0x112
    mtcrf   0xFF, r2
    mfspr   r2, 0x111
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1100
    rfi
    .skip 144

# 0x1200: PPC603E Data Store TLB Miss
    mtspr   0x111, r2
    mfcr    r2
    mtspr   0x112, r2
    mfmsr   r2
    andis.  r2, r2, 2
    beq     .L_pow_1200
    mfmsr   r2
    xoris   r2, r2, 2
    sync    0
    mtmsr   r2
    sync    0
    mtspr   0x111, r2
.L_pow_1200:
    mfspr   r2, 0x112
    mtcrf   0xFF, r2
    mfspr   r2, 0x111
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1200
    rfi
    .skip 144

# 0x1300: Instruction Address Breakpoint Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1300
    rfi
    .skip 204

# 0x1400: System Management Interrupt
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1400
    rfi
    .skip 460

# 0x1600: Denorm Detect / Java Mode Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1600
    rfi
    .skip 204

# 0x1700: Thermal Management Interrupt
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1700
    rfi
    .skip 1228

# 0x1C00: Data Breakpoint Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1C00
    rfi
    .skip 204

# 0x1D00: Instruction Breakpoint Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1D00
    rfi
    .skip 204

# 0x1E00: Peripheral Breakpoint Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1E00
    rfi
    .skip 204

# 0x1F00: Non-Maskable Development Port Exception
    mtspr   0x111, r2
    mtspr   0x112, r3
    mtspr   0x113, r4
    mfspr   r2, 0x1A
    mfspr   r4, 0x1B
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   0x1B, r3
    lis     r3, TRKInterruptHandler@h
    ori     r3, r3, TRKInterruptHandler@l
    mtspr   0x1A, r3
    li      r3, 0x1F00
    rfi

.global gTRKInterruptVectorTableEnd
gTRKInterruptVectorTableEnd:
