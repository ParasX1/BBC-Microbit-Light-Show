.syntax unified
.global main

.type main, %function
main:

  bl sequence_1_a
  bl sequence_4
  bl sequence_2
  bl sequence_3
  bl sequence_6
  bl sequence_5
  bl sequence_1_b
  bl sequence_7

  b main
.size main, .-main


sequence_1_a: @ Full Board Slow Animation
  push {lr}

  bl shape_1_col_1
  bl timer
  bl shape_1_col_2
  bl timer  
  bl shape_1_col_3
  bl timer
  bl shape_1_col_4
  bl timer
  bl shape_1_col_5
  bl timer
  bl clear_bit

  bl timer
  bl shape_1_col_5
  bl timer
  bl shape_1_col_4
  bl timer
  bl shape_1_col_3
  bl timer
  bl shape_1_col_2
  bl timer
  bl shape_1_col_1
  bl timer
  bl clear_bit


  pop {lr}
  nop
bx lr
sequence_1_b: @Full Board Slow Animation 2 triangle pattern 
  push {lr}

 bl timer
  bl shape_1_col_5
  bl timer
  bl clear_bit
  bl shape_1_col_4
  bl timer
  bl clear_bit  
  bl shape_1_col_3
  bl timer
  bl clear_bit
  bl shape_1_col_2
  bl timer
  bl clear_bit
  bl shape_1_col_1
  bl timer
  bl clear_bit

  bl timer
  bl shape_1_col_1
  bl timer
  bl clear_bit
  bl shape_1_col_2
  bl timer
  bl clear_bit  
  bl shape_1_col_3
  bl timer
  bl clear_bit
  bl shape_1_col_4
  bl timer
  bl clear_bit
  bl shape_1_col_5
  bl timer
  bl clear_bit

  pop {lr}
  nop
bx lr

  shape_1_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 1,2,3,4,5)
    push {lr}
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit
    
    pop {lr}
  bx lr

  shape_1_col_2: @Setting DIR then OUT using setbit function (Col2 / Row 2,3,4)
    push {lr}

    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit

    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit

    
    mov r0,0x504 @ 0x50000000 OUT ->

    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit


    pop {lr}
  bx lr

  shape_1_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 15
    bl set_bit

    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_1_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 5
    bl set_bit

    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->

    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit

    nop
    mov r0,0x504 @ 0x50000000 OUT ->

    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit


    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_1_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,2,3,4,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

sequence_2: @Closing
  push {lr}

  bl timer
  bl shape_2_col_1
  bl timer
  bl shape_2_col_2
  bl timer
  bl shape_2_col_3
  bl timer
  bl shape_2_col_4
  bl timer
  bl shape_2_col_5
  bl timer
  bl clear_bit

  bl timer 
  bl shape_3_col_5
  bl timer
  bl shape_3_col_4
  bl timer
  bl shape_3_col_3
  bl timer
  bl shape_3_col_2
  bl timer
  bl shape_3_col_1
  bl timer
  bl clear_bit
  pop {lr}

bx lr

  shape_2_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_2_col_2: @Setting DIR then OUT using setbit function (Col2 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_2_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 3,4,5)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_2_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,4)

    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 5
    bl set_bit

    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_2_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_3_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_3_col_2:@Setting DIR then OUT using setbit function (Col2 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_3_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 3)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_3_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,4)

    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_3_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_2
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

sequence_3: @ Cool center merge pattern
  push {lr}

  bl shape_4_col_1
  bl shape_4_col_5
  bl timer
  bl shape_4_col_2
  bl shape_4_col_4
  bl timer
  bl shape_4_col_1
  bl timer
  bl shape_1_col_1
  bl shape_1_col_2
  bl shape_1_col_3
  bl shape_1_col_4
  bl shape_1_col_5
  bl timer
  bl clear_bit
  bl timer

  pop {lr}
bx lr
  shape_4_col_1:  @Setting DIR then OUT using setbit function (Col1 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_3
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_4_col_2: @Setting DIR then OUT using setbit function (Col3 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_4_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_4_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,4)

    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_4_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

sequence_4: @3-2-3-2-3 flash animation
  push {lr}
  bl clear_bit
  bl small_Timer
  bl shape_5_col_1
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_5_col_2
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_5_col_3
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_5_col_4
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_5_col_5
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_6_col_5
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_6_col_4
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_6_col_3
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_6_col_2
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_6_col_1
  pop {lr}
bx lr
  shape_5_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 1,3,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_5_col_2:@Setting DIR then OUT using setbit function (Col2 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
  
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_5_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 1,3,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_5_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_5_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,3,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_6_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_6_col_2:@Setting DIR then OUT using setbit function (Col2 / Row 1,3,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit
  
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_6_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_6_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 1,3,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_6_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT ->
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
sequence_5: @ Diamond
  push {lr}
  bl clear_bit
  bl shape_7_col_1
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_7_col_2
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_7_col_3
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_7_col_4
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_7_col_5
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl diamond_Timer @displays Diamond
  bl medium_Timer
  bl clear_bit

  pop {lr}
bx lr
  shape_7_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit 
    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_7_col_2: @Setting DIR then OUT using setbit function (Col2 / Row 2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_7_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 1,2,3,4,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 21
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_7_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
  

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_7_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 

    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 15
    bl set_bit


    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_8_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 28
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_8_col_2: @Setting DIR then OUT using setbit function (Col2 / Row 1,2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_8_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 2,3,4,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_8_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 1,2,3,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 05
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 21
    bl set_bit
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    mov r1, 24
    bl set_bit
  

    pop {lr} @Linking back to bl in sequence_1
  bx lr

  shape_8_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 2,3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 30
    bl set_bit 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 
    mov r1, 22
    bl set_bit
    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr

sequence_6: @Explosion outwards
  push {lr}
  bl shape_9_col_3
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_10_col_2
  bl shape_10_col_4
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl shape_11_col_1
  bl shape_11_col_5
  bl small_Timer
  bl clear_bit
  bl small_Timer
  bl clear_bit
  bl small_Timer
  
  pop {lr}
bx lr
  shape_9_col_3: @Setting DIR then OUT using setbit function (Col3 / Row 3)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 31
    bl set_bit 

    mov r1, 15
    bl set_bit

    nop
    mov r0,0x504 @ 0x50000000 OUT -> 

    mov r1, 15
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
  shape_10_col_2: @Setting DIR then OUT using setbit function (Col2 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->
    mov r1, 11
    bl set_bit

    mov r1, 22
    bl set_bit

    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 

    mov r1, 22
    bl set_bit

    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
  shape_10_col_4: @Setting DIR then OUT using setbit function (Col4 / Row 2,4)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000300 @ 0x50000300 DIR 5
    mov r0, 0x514
    mov r1, 5
    bl set_bit
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->

    mov r1, 22
    bl set_bit

    mov r1, 24
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 

    mov r1, 22
    bl set_bit

    mov r1, 24
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
  shape_11_col_1: @Setting DIR then OUT using setbit function (Col1 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->

    mov r1, 28
    bl set_bit

    mov r1, 21
    bl set_bit

    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 

    mov r1, 21
    bl set_bit

    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
  shape_11_col_5: @Setting DIR then OUT using setbit function (Col5 / Row 1,5)
    push {lr}  @Linking back to bl in sequence_1
    nop
    ldr r4, = 0x50000000
    mov r0, 0x514 @ 0x50000000 DIR ->

    mov r1, 30
    bl set_bit

    mov r1, 21
    bl set_bit

    mov r1, 19
    bl set_bit
    nop
    mov r0,0x504 @ 0x50000000 OUT -> 

    mov r1, 21
    bl set_bit

    mov r1, 19
    bl set_bit

    pop {lr} @Linking back to bl in sequence_1
  bx lr
sequence_7: @ Heart (fash/display)
  push {lr}
  bl clear_bit
  bl shape_8_col_5
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_8_col_4
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_8_col_3
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_8_col_2
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl shape_8_col_1
  bl medium_Timer
  bl clear_bit
  bl medium_Timer
  bl heart_Timer @displays heart
  bl medium_Timer
  bl clear_bit
  
  pop {lr}
bx lr

small_Timer: @Small length delay
  push {lr}
  ldr r9, =550000
  bl delay
  pop {lr}
bx lr
medium_Timer: @Medium length delay
  push {lr}
  ldr r9, =800000
  bl delay
  pop {lr}
bx lr
timer: @Full length delay
  push {lr}
  ldr r9, =1000000
  bl delay
  pop {lr}
bx lr
delay: @Actual delay function
  sub r9, r9, 1
  cmp r9, 0
  bne delay
bx lr

diamond_Timer: @Still image of diamond
  push {lr}
  ldr r9, =24000
  bl diamond_pic
  pop {lr}
bx lr

diamond_pic: @Continous Loop (displays the diamond)
  push {lr}
  subs r9, r9, #1
  bl shape_7_col_1
  bl clear_bit
  bl shape_7_col_2
  bl clear_bit
  bl shape_7_col_3
  bl clear_bit
  bl shape_7_col_4
  bl clear_bit
  bl shape_7_col_5
  bl clear_bit
  cmp r9, 0
  bne diamond_pic
  pop {lr}
bx lr

heart_Timer: @Still image of heart
  push {lr}
  ldr r9, =24000
  bl heart_pic
  pop {lr}
bx lr

heart_pic: @Continous Loop (displays the heart)
  push {lr}
  subs r9, r9, #1
  bl shape_8_col_1
  bl clear_bit
  bl shape_8_col_2
  bl clear_bit
  bl shape_8_col_3
  bl clear_bit
  bl shape_8_col_4
  bl clear_bit
  bl shape_8_col_5
  bl clear_bit
  cmp r9, 0
  bne heart_pic
  pop {lr}
bx lr

set_bit: @sets a bit both DIR and OUT to high
  @r4: base address of pin
  @r0: offset of address
  @r1: the pin to set to high
  @r5: store bit 1 into register
  @r3: the pin already set to high
  push {lr}
  ldr r3, [r4, r0]
  mov r5, 0b1
  lsl r5, r5, r1
  orr r3, r3, r5
  str r3, [r4, r0]
  pop {lr}
bx lr

clear_bit:@Clears entire board by pushing 0 into address
  @r4: base address of pin
  @r0: offset of address
  @r1: the pin to set to high
  @r5: store bit 1 into register
  @r3: the pin already set to high
  push {lr}
  mov r10, 0
  ldr r4, =0x50000000
  str r10, [r4, 0x514]
  str r10, [r4, 0x504]
  ldr r4, =0x50000300
  str r10, [r4, 0x514]
  str r10, [r4, 0x504]
  pop {lr}
bx lr
