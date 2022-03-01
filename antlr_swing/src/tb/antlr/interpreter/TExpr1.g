tree grammar TExpr1;

options {
	tokenVocab=Expr;

	ASTLabelType=CommonTree;
    superClass=MyTreeParser;
}

@header {
package tb.antlr.interpreter;
}

prog    : (e=expr {drukuj ($e.text + " = " + $e.out.toString());})*;

expr returns [Integer out]
        : ^(PLUS  e1=expr e2=expr) {$out = add($e1.out, $e2.out);}
        | ^(MINUS e1=expr e2=expr) {$out = sub($e1.out, $e2.out);}
        | ^(MUL   e1=expr e2=expr) {$out = mul($e1.out, $e2.out);}
        | ^(DIV   e1=expr e2=expr) {$out = div($e1.out, $e2.out);}
        | ^(SHL   e1=expr e2=expr) {$out = shl($e1.out, $e2.out);}
        | ^(SHR   e1=expr e2=expr) {$out = shr($e1.out, $e2.out);}
        | ^(PODST i1=ID   e2=expr)
        //| ^(PRINT e=expr)          {drukuj ($e.text + " = " + $e.out.toString());}
        | INT                      {$out = getInt($INT.text);}
        ;