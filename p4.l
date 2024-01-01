%{

int c_identifier=0;
int c_len=0;
int tot=0;
int c_float=0;
%}

ide [a-zA-Z][a-zA-Z0-9]+
flo [+-][0-9]*
spcl [^a-zA-Z0-9]
%%
{ide} {if(yytext[0]=='a'||yytext[0]=='A'){
	c_identifier++;} 
	if(yyleng==5) {c_len++;}
	tot++;}
{flo} {c_float++;}
[0-9]
{spcl}
%%
int main(){
	yyin=fopen("txt1","r");
	yylex();
	printf("no oof idettfiers whose length start with a=%d \n no of identifiers whose length is 5=%d \n total no of identifiers=%d \n no of floating point numbers:%d",c_identifier,c_len,tot,c_float);
	return 0;
	}
int yywrap(){
	return 1;
	}
