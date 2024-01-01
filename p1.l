%{
int reg1=0;
int reg2=0;
%}

%%

aa[a+b]*bb {reg1++;}
[0+1]*000[0+1]* {reg2++;}
.;

%%

int main(){
	printf("enter the string:");
	yylex();
	if(reg1==1||reg2==1)
		printf("Valid string");
	else
		printf("invalid Strring");
	return 0;
	}
int yywrap(){
	return 1;
	}
