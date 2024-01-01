%{

int vowel_count=0;
int cons_count=0;
%}

vowel [aeiouAEIOU]
cons   [a-zA-Z]
spcl	[^a-zA-Z0-9]
%%

{vowel} {vowel_count++;}
{cons}  {cons_count++;}
[0-9]
{spcl}
.;
%%
int main(){
	printf("enter the  striing:");
	yylex();
	printf("No of vowels = %d and no of consonents=%d",vowel_count,cons_count);
	return 0;
	}
int yywrap(){
	return 1;
	}
