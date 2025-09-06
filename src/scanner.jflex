import java_cup.runtime.*;

%%

%class Scanner
%unicode
%cup
%line
%column

%{
    private Symbol sym(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    private Symbol sym(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

/* Whitespace */
WhiteSpace = [ \t\n\r]

/* Comments */
Comment = "//" [^\n]* \n | "/*" [^*] ~"*/" | "/*" "*"+ "/"

/* Identifiers */
Identifier = [a-zA-Z][a-zA-Z0-9_]*

/* Integer literals */
IntLiteral = 0 | [1-9][0-9]*

%%

<YYINITIAL> {
    /* Keywords */
    "int"       { return sym(sym.INT); }
    
    /* Operators */
    "+"         { return sym(sym.PLUS); }
    "-"         { return sym(sym.MINUS); }
    "*"         { return sym(sym.MULT); }
    "/"         { return sym(sym.DIV); }
    "="         { return sym(sym.ASSIGN); }
    ";"         { return sym(sym.SEMI); }
    
    /* Parentheses */
    "("         { return sym(sym.LPAREN); }
    ")"         { return sym(sym.RPAREN); }
    
    /* Literals */
    {IntLiteral}    { return sym(sym.INT_LITERAL, new Integer(yytext())); }
    
    /* Identifiers */
    {Identifier}    { return sym(sym.ID, yytext()); }
    
    /* Whitespace and comments */
    {WhiteSpace}    { /* ignore */ }
    {Comment}       { /* ignore */ }
}

/* Error fallback */
.               {System.out.println("SCANNER ERROR: " + yytext());}
