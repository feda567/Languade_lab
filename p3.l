%{
int char_count=0;
int word_count=0;
int line_count=0;
%}

chara [a-zA-Z]
word  [' ']
line  [\n]

%%

{chara} {char_count++;}
{word} {word_count++;}
{line} {line_count++;word_count++;}
[0-9]
.;
%%

int main(){
	yyin=fopen("txt","r");
	yylex();
	printf("Character count=%d,Word Count=%d,line count=%d",char_count,word_count,line_count);
	return 0;
	}
int yywrap(){
	return 1;
	}
