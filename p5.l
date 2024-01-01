%{

%}

reg1 [a-zA-Z][a-zA-Z]*

%%
reg1 {fprintf(yyout,"%s",yytext);}
[0-9]
[\t]
.;
%%
int main(){
	extern FILE *yyin,*yyout;
	yyin=fopen("txt2","r");
	yyout=fopen("txt3","w");
	yylex();
	return 0;
	}
int yywrap(){
	return 1;
	}
