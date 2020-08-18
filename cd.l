%{
#include<stdio.h>
int c=0;
int mcount=0,acount=0,elcount=0,wcount=0,eofcount=0,eolcount=0;
%}
%s LANGULAR ARANGULAR MRANGULAR ELRANGULAR WRANGULAR EOFRANGULAR EOLRANGULAR 
number [0-9]+(".")?[0-9]*
addop -|+
mulop *|/
lparen (
rparen )
factor lparen expr rparen|number
term factor mulop term
expr term addop expr
%%
\n {c++;}
"<" {BEGIN LANGULAR;}
<LANGULAR>("MULOP") {BEGIN MRANGULAR; mcount++;}
<LANGULAR>("else") {BEGIN ELRANGULAR; printf("else "); elcount++;}
<LANGULAR>("ADDOP") {BEGIN ARANGULAR;acount++;}
<LANGULAR>("WS") {BEGIN WRANGULAR;wcount++;}
<LANGULAR>("EOF") {BEGIN EOFRANGULAR;eofcount++;}
<LANGULAR>("EOL") {BEGIN EOLRANGULAR;eolcount++;}
<MRANGULAR>">" {BEGIN 0; printf("if(ch==*||ch==/)");printf("\n");mcount--;}
<MRANGULAR>. {BEGIN 0; printf("Error in line number: %d",c++);printf("\n");}
<ARANGULAR>">" {BEGIN 0; printf("if(ch==+||ch==-)");printf("\n");acount--;}
<ARANGULAR>. {BEGIN 0; printf("Error in line number: %d",c++);printf("\n");}
<WRANGULAR>">" {BEGIN 0; printf("if(ch==' '||ch==\\t)");printf("\n");wcount--;}
<WRANGULAR>. {BEGIN 0; printf("Error in line number: %d",c++);printf("\n");}
<EOFRANGULAR>">" {BEGIN 0; printf("if(ch==65535)");printf("\n");eofcount--;}
<EOFRANGULAR>. {BEGIN 0; printf("Error in line number: %d",c++);printf("\n");}
<EOLRANGULAR>">" {BEGIN 0; printf("if(ch==\\n)");printf("\n");eolcount--;}
<EOLRANGULAR>. {BEGIN 0; printf("Error in line number: %d",c++);printf("\n");}
<ELRANGULAR>">" {BEGIN 0;elcount--;}
<ELRANGULAR>. {BEGIN 0;printf("Error in line number: %d",c++);printf("\n");}



. ;
%%
void main(){
yyin=fopen("source.txt","r");
yylex();
fclose(yyin);
if(mcount==1){
printf("Error in usage of MULOP\n");
}
if(acount==1){
printf("Error in usage of ADDOP\n");
}
if(wcount==1){
printf("Error in usage of WS\n");
}
if(elcount==1){
printf("Error in usage of else \n");
}
if(eofcount==1){
printf("Error in usage of EOF\n");
}
if(eolcount==1){
printf("Error in usage of EOL\n");
}


}
