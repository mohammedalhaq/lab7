# Lab 7: Using SDD to implement a calculator

## Introduction
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

## Your task

You are to augment the grammar with the following:

- An action so that each _program_ rule will trigger a print statement that will show the result of the `$expr.val`.
- Actions at various productions of `expr` to compute the correct value of `$val` as a double.
- Actions at various productions of `exprList` to compute the correct value of `$val` as a list of doubles.
  This means you also need an `@init` action for `exprList` to create an empty list first.
  
## Makefile

The makefile provided will help you to develop your grammar:

- `make g4` compiles the grammar file to Java source.
- `make java` compiles the Java sources into Java classes.
- `make run` runs the calculator on the test files, and show the outputs.
- `make check` runs the calculator on the test files and checks for correctness.
- `make clean` removes generated files.
