%{
#include<stdio.h>
int sl=0,ml=0;
%}
%%
"/*"[a-zA-Z0-9" "\t\n]*"*/" {ml++;}
"//".* {sl++;}
%%
int main()
{
yyin=fopen("Input.c","r");
yyout=fopen("Output.c","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("The number of multiple comment line : %d\n",ml);
printf("The number of single comment line : %d\n",sl);
return 0;
}
