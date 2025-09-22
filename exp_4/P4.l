%{
#include <stdio.h>

char convert(char c) {
    if(c >= 'a' && c <= 'z') {
        return c - 32; // Convert to uppercase
    } else if(c >= 'A' && c <= 'Z') {
        return c + 32; // Convert to lowercase
    }
    return c;
}
%}

%%
[a-zA-Z]    { putchar(convert(yytext[0])); }
.           { putchar(yytext[0]); }
%%

int yywrap() {
    return 1;
}

