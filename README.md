# Lab 7: Using SDD to implement a calculator

In this lab, you will continue with the mini-language in Lab 6.  You will be *given* a grammar for the language.

The given grammar contains the following syntactic variables:

```
program
  : expr 
  ;
  
expr returns [double val]
  : ...
  ;
  
exprList returns [List<Double> val]
  : ...
  ;
```

You are to augment the grammar with the following:

- An action so that each _program_ rule will trigger a print statement that will show the result of the `$expr.val`.
- Actions at various productions of `expr` to compute the correct value of `$val` as a double.
- Actions at various productions of `exprList` to compute the correct value of `$val` as a list of doubles.
  This means you also need an `@init` action for `exprList` to create an empty list first.
