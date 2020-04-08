void main() {
          int x[]={192, 249,164,176,153,146,130,248,128,144};
          int s,s1,m,m1,s2,a,h,h1 ;
               a=1;
              s=0;
              s2=0;
              h=2;
              h1=1;
         trisd=0;
          trisb=0;

               portd=192;
                    while(1){
                if(s1==10){s=0;s2++;}
                if(s2==6){s=0;m++;s2=0;}
                if(m==10){m=0;m1++;}
                if(m1==6){s=0;m=0;m1=0;h++;}
                if(h==10){h=0;h1++;}
                if(h1==1&&h==3){h1=0;h=0;}
              portb=a;
              s1=s/500;

           if(a==1){portd=x[s1];delay_ms(1);}
           if(a==2){  portd=x[s2];delay_ms(1);}
           if(a==4){  portd=x[m];delay_ms(1);}
           if(a==8){  portd=x[m1];delay_ms(1);}
           if(a==16){  portd=x[h];delay_ms(1);}
           if(a==32){  portd=x[h1];delay_ms(1);}

                    
                    delay_ms(1);
               a=a*2;
               s++;
                  if(a==64){a=1;}
           
           
                     }

}