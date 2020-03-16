grammar Expr;

program
    : expr
    ;

expr returns [double val] 
    : expr '*' expr
    | expr '/' expr
    | expr '+' expr
    | expr '-' expr
    | 'sin' '(' expr ')'
    | 'cos' '(' expr ')'
    | 'sum' '(' exprList ')'
    | '(' expr ')'
    | Number
    ;

exprList returns [List<Double> val]
    :
    | (expr ',')* expr
    ;

fragment Digit
    : ('0' .. '9')
    ;

Number
    : Digit+ ('.' Digit+)?
    ;

Whitespace
    : (' ' | '\t' | '\r' | '\n')+ -> skip
    ;
