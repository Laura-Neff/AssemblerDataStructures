// THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR   
// OR CODE WRITTEN BY OTHER STUDENTS - LAURA NEFF
// 
// 
//
	.global main, Stop, CodeEnd
	.global DataStart, DataEnd
	.global Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10
	.global A, B, C
	.global i, j, k
	.global head
	.global ans_b, ans_s, ans_i

main:
//******************************************************************
// Put your assembler instructions here
// Write the answer to each question after the corresponding label.
// DO NOT REMOVE ANY LABEL IN THIS ASSIGNMENT (all labels are now NECESSARY)
// *** Failure to do so will result in point dedections !!! ***
//******************************************************************


// Write assembler instruction here to execute:
//         ans_b = A[3];
Q1:

    movw  r0, #:lower16:ans_b
    movt  r0, #:upper16:ans_b
    movw  r1, #:lower16:A
    movt  r1, #:upper16:A
    ldrsb r2, [r1, #3]
    strb  r2, [r0]





// Write assembler instruction here to execute:
//         ans_i = B[8];
Q2:

    movw  r0, #:lower16:ans_i
    movt  r0, #:upper16:ans_i
    movw  r1, #:lower16:B
    movt  r1, #:upper16:B
    ldrsh r2, [r1, #16]
    strh  r2, [r0]
   





// Write assembler instruction here to execute:
//         ans_s = C[k];
Q3:

    movw  r0, #:lower16:ans_s
    movt  r0, #:upper16:ans_s
    movw  r1, #:lower16:C
    movt  r1, #:upper16:C
    movw  r2, #:lower16:k
    movt  r2, #:upper16:k 
    ldr   r2, [r2]
    add   r2, r2, r2                
    add   r2, r2, r2          
    ldr   r3, [r1, r2]
    str   r3, [r0]





// Write assembler instruction here to execute:
//         ans_s = A[i + j];      
Q4:

    movw  r1, #:lower16:A
    movt  r1, #:upper16:A
    movw  r2, #:lower16:i
    movt  r2, #:upper16:i
    movw  r3, #:lower16:j
    movt  r3, #:upper16:j
    ldrsb r2, [r2]
    ldrsh r3, [r3]
    add   r2, r2, r3         
    ldrsb r3, [r1, r2]
    str   r3, [r0]






// Write assembler instruction here to execute:
//         ans_s = C[j + k];      
Q5:

    movw  r1, #:lower16:C
    movt  r1, #:upper16:C
    movw  r2, #:lower16:k
    movt  r2, #:upper16:k
    movw  r3, #:lower16:j
    movt  r3, #:upper16:j
    ldr   r2, [r2]
    ldrsh r3, [r3]
    add   r2, r2, r3
    add   r2, r2, r2                
    add   r2, r2, r2          
    ldr   r3, [r1, r2]
    str   r3, [r0]






// Write assembler instruction here to execute:
//         ans_i = A[i] + B[k];  
Q6:

    movw  r0, #:lower16:ans_i
    movt  r0, #:upper16:ans_i
    movw  r1, #:lower16:A
    movt  r1, #:upper16:A
    movw  r2, #:lower16:i
    movt  r2, #:upper16:i 
    ldrsb r2, [r2]         
    ldrsb r3, [r1, r2]
    

    movw  r5, #:lower16:B
    movt  r5, #:upper16:B
    movw  r6, #:lower16:k
    movt  r6, #:upper16:k 
    ldr   r6, [r6]               
    add   r6, r6, r6          
    ldrsh r7, [r5, r6]
    

    add   r9, r7, r3
    str   r9, [r0]
    







// Write assembler instruction here to execute:
//         ans_i = B[A[k] - 50];      
Q7:

    movw  r1, #:lower16:A
    movt  r1, #:upper16:A
    movw  r2, #:lower16:k
    movt  r2, #:upper16:k 
    ldr   r2, [r2]         
    ldrsb r3, [r1, r2]

    sub   r3, r3, #50

    movw  r4, #:lower16:B
    movt  r4, #:upper16:B  
    add   r3, r3, r3     
    ldrsh r5, [r4, r3]

    movw  r0, #:lower16:ans_i
    movt  r0, #:upper16:ans_i

    str   r5, [r0]








// Write assembler instruction here to execute:
//         ans_s = B[ 14 ]
Q8:

    movw  r0, #:lower16:ans_s
    movt  r0, #:upper16:ans_s
    movw  r1, #:lower16:B
    movt  r1, #:upper16:B
    ldrsh r2, [r1, #28]
    strh  r2, [r0]







// Write assembler instruction here to execute:
//	  ans_i = head.value3;
Q9:

        movw    r0, #:lower16:ans_i
        movt    r0, #:upper16:ans_i

	movw    r1, #:lower16:head
        movt    r1, #:upper16:head 

        ldr     r1, [r1]

        ldrsh   r3, [r1,#6] 

	str     r3, [r0]





// Write assembler instruction here to execute:
//	  ans_s = head.next.next.value1;
Q10:

        movw    r0, #:lower16:head
        movt    r0, #:upper16:head     
        ldr     r0, [r0]               

        ldr     r1, [r0]                
        ldrsh   r2, [r0,#4]            
        ldrsh   r3, [r0,#6]             

        ldr     r0, [r0,#8]             

        ldr     r4, [r0]               
        ldrsh   r5, [r0,#4]             
        ldrsh   r6, [r0,#6]             

        ldr     r0, [r0,#8]                    

        ldr     r7, [r0]                
    

        movw    r8, #:lower16:ans_s
        movt    r8, #:upper16:ans_s     

	strh    r7, [r8]




//************************************************
// Don't change any thing below this line  !!!!!
//************************************************

Stop:	nop

CodeEnd:
	nop

//***********************************************************************
// Data segment
//***********************************************************************

	.data
DataStart:
//***********************************************************************
// I have defined the ans_b, ans_s and ans_i variables below this line
//
// Don't touch these variables !!!!
// Also: you do NOT need to define any more variables !!!
//***********************************************************************
	.align
ans_b:  .skip  1		// Uninit byte variable

	.align
ans_s:  .skip  2		// Uninit short variable

	.align
ans_i:  .skip  4		// Uninit short variable

	.align
i:      .byte  2		// byte i = 2;

	.align
j:      .2byte 3		// short j = 3;

	.align
k:      .4byte  4		// int k = 4;

// arrays  A (byte), B(short) and C(int)
	.align
A:      .byte     11, -22, 33, -44, 55, -66, 77, -88, 99, -123

	.align
B:      .2byte    111, -222, 333, -444, 555, -666, 777, -888, 999, -5432

	.align
C:      .4byte  1111, -2222, 3333, -4444, 5555, -6666, 7777, -8888, 9999, -9876

// Linked list
//
// head ->[1234,89,-11]->[2345,78,66]->[-3456,67,44]->[4567,56,77]->[5678,45,44]

	.align 4
head:   .4byte  list1

list3:  .4byte  -3456
        .2byte 67
        .2byte 44
	.4byte  list4

list2:  .4byte  2345
        .2byte 78
        .2byte 66
	.4byte  list3

list4:  .4byte  4567
        .2byte 56
        .2byte 77
	.4byte  list5

list1:  .4byte  1234
        .2byte 89
        .2byte -11
	.4byte  list2

list5:  .4byte  5678
        .2byte 45
        .2byte 44
	.4byte  0

DataEnd:
	.end

