
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		int x[]={192, 249,164,176,153,146,130,248,128,144};
	MOVLW      192
	MOVWF      main_x_L0+0
	MOVLW      0
	MOVWF      main_x_L0+1
	MOVLW      249
	MOVWF      main_x_L0+2
	MOVLW      0
	MOVWF      main_x_L0+3
	MOVLW      164
	MOVWF      main_x_L0+4
	MOVLW      0
	MOVWF      main_x_L0+5
	MOVLW      176
	MOVWF      main_x_L0+6
	MOVLW      0
	MOVWF      main_x_L0+7
	MOVLW      153
	MOVWF      main_x_L0+8
	MOVLW      0
	MOVWF      main_x_L0+9
	MOVLW      146
	MOVWF      main_x_L0+10
	MOVLW      0
	MOVWF      main_x_L0+11
	MOVLW      130
	MOVWF      main_x_L0+12
	MOVLW      0
	MOVWF      main_x_L0+13
	MOVLW      248
	MOVWF      main_x_L0+14
	MOVLW      0
	MOVWF      main_x_L0+15
	MOVLW      128
	MOVWF      main_x_L0+16
	MOVLW      0
	MOVWF      main_x_L0+17
	MOVLW      144
	MOVWF      main_x_L0+18
	MOVLW      0
	MOVWF      main_x_L0+19
;MyProject.c,4 :: 		a=1;
	MOVLW      1
	MOVWF      main_a_L0+0
	MOVLW      0
	MOVWF      main_a_L0+1
;MyProject.c,5 :: 		s=0;
	CLRF       main_s_L0+0
	CLRF       main_s_L0+1
;MyProject.c,6 :: 		s2=0;
	CLRF       main_s2_L0+0
	CLRF       main_s2_L0+1
;MyProject.c,7 :: 		h=2;
	MOVLW      2
	MOVWF      main_h_L0+0
	MOVLW      0
	MOVWF      main_h_L0+1
;MyProject.c,8 :: 		h1=1;
	MOVLW      1
	MOVWF      main_h1_L0+0
	MOVLW      0
	MOVWF      main_h1_L0+1
;MyProject.c,9 :: 		trisd=0;
	CLRF       TRISD+0
;MyProject.c,10 :: 		trisb=0;
	CLRF       TRISB+0
;MyProject.c,12 :: 		portd=192;
	MOVLW      192
	MOVWF      PORTD+0
;MyProject.c,13 :: 		while(1){
L_main0:
;MyProject.c,14 :: 		if(s1==10){s=0;s2++;}
	MOVLW      0
	XORWF      main_s1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      10
	XORWF      main_s1_L0+0, 0
L__main26:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
	CLRF       main_s_L0+0
	CLRF       main_s_L0+1
	INCF       main_s2_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_s2_L0+1, 1
L_main2:
;MyProject.c,15 :: 		if(s2==6){s=0;m++;s2=0;}
	MOVLW      0
	XORWF      main_s2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      6
	XORWF      main_s2_L0+0, 0
L__main27:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
	CLRF       main_s_L0+0
	CLRF       main_s_L0+1
	INCF       main_m_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_m_L0+1, 1
	CLRF       main_s2_L0+0
	CLRF       main_s2_L0+1
L_main3:
;MyProject.c,16 :: 		if(m==10){m=0;m1++;}
	MOVLW      0
	XORWF      main_m_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      10
	XORWF      main_m_L0+0, 0
L__main28:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	CLRF       main_m_L0+0
	CLRF       main_m_L0+1
	INCF       main_m1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_m1_L0+1, 1
L_main4:
;MyProject.c,17 :: 		if(m1==6){s=0;m=0;m1=0;h++;}
	MOVLW      0
	XORWF      main_m1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      6
	XORWF      main_m1_L0+0, 0
L__main29:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	CLRF       main_s_L0+0
	CLRF       main_s_L0+1
	CLRF       main_m_L0+0
	CLRF       main_m_L0+1
	CLRF       main_m1_L0+0
	CLRF       main_m1_L0+1
	INCF       main_h_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h_L0+1, 1
L_main5:
;MyProject.c,18 :: 		if(h==10){h=0;h1++;}
	MOVLW      0
	XORWF      main_h_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      10
	XORWF      main_h_L0+0, 0
L__main30:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	CLRF       main_h_L0+0
	CLRF       main_h_L0+1
	INCF       main_h1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h1_L0+1, 1
L_main6:
;MyProject.c,19 :: 		if(h1==1&&h==3){h1=0;h=0;}
	MOVLW      0
	XORWF      main_h1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      1
	XORWF      main_h1_L0+0, 0
L__main31:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVLW      0
	XORWF      main_h_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      3
	XORWF      main_h_L0+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
L__main24:
	CLRF       main_h1_L0+0
	CLRF       main_h1_L0+1
	CLRF       main_h_L0+0
	CLRF       main_h_L0+1
L_main9:
;MyProject.c,20 :: 		portb=a;
	MOVF       main_a_L0+0, 0
	MOVWF      PORTB+0
;MyProject.c,21 :: 		s1=s/500;
	MOVLW      244
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	MOVF       main_s_L0+0, 0
	MOVWF      R0+0
	MOVF       main_s_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_s1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_s1_L0+1
;MyProject.c,23 :: 		if(a==1){portd=x[s1];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      1
	XORWF      main_a_L0+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	MOVF       main_s1_L0+0, 0
	MOVWF      R0+0
	MOVF       main_s1_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
L_main10:
;MyProject.c,24 :: 		if(a==2){  portd=x[s2];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      2
	XORWF      main_a_L0+0, 0
L__main34:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVF       main_s2_L0+0, 0
	MOVWF      R0+0
	MOVF       main_s2_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
L_main12:
;MyProject.c,25 :: 		if(a==4){  portd=x[m];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      4
	XORWF      main_a_L0+0, 0
L__main35:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
	MOVF       main_m_L0+0, 0
	MOVWF      R0+0
	MOVF       main_m_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
L_main14:
;MyProject.c,26 :: 		if(a==8){  portd=x[m1];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      8
	XORWF      main_a_L0+0, 0
L__main36:
	BTFSS      STATUS+0, 2
	GOTO       L_main16
	MOVF       main_m1_L0+0, 0
	MOVWF      R0+0
	MOVF       main_m1_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
L_main16:
;MyProject.c,27 :: 		if(a==16){  portd=x[h];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      16
	XORWF      main_a_L0+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main18
	MOVF       main_h_L0+0, 0
	MOVWF      R0+0
	MOVF       main_h_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
L_main18:
;MyProject.c,28 :: 		if(a==32){  portd=x[h1];delay_ms(1);}
	MOVLW      0
	XORWF      main_a_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      32
	XORWF      main_a_L0+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVF       main_h1_L0+0, 0
	MOVWF      R0+0
	MOVF       main_h1_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_x_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	NOP
	NOP
L_main20:
;MyProject.c,31 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	NOP
	NOP
;MyProject.c,32 :: 		a=a*2;
	MOVF       main_a_L0+0, 0
	MOVWF      R1+0
	MOVF       main_a_L0+1, 0
	MOVWF      R1+1
	RLF        R1+0, 1
	RLF        R1+1, 1
	BCF        R1+0, 0
	MOVF       R1+0, 0
	MOVWF      main_a_L0+0
	MOVF       R1+1, 0
	MOVWF      main_a_L0+1
;MyProject.c,33 :: 		s++;
	INCF       main_s_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_s_L0+1, 1
;MyProject.c,34 :: 		if(a==64){a=1;}
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      64
	XORWF      R1+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVLW      1
	MOVWF      main_a_L0+0
	MOVLW      0
	MOVWF      main_a_L0+1
L_main23:
;MyProject.c,37 :: 		}
	GOTO       L_main0
;MyProject.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
