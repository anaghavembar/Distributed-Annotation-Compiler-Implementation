# Distributed Annotation Compiler Implementation
## An implementation of the basic working of a distributed annotation compiler inspired by DisBlue+ compiler


Many programming languages require several complex decision making statements and looping statements in order to perform the required tasks. The use of annotation in the place of condition statements and loops speeds up the compilation time and development time. This implementation is based on the DisBlue+ compiler. This implementation consists of two models which handle annotations in programs to generate the actual code corresponding to the annotations. This concept can help greatly in distributed networks as there is lesser data being transferred over networks.


## Steps to run the Python script to handle annotations
1. Create a new .py empty file named modifiedInfix.py
2. Store cd20Mark.py , the input file infix.txt and modifiedfInfix.py in the same package so that they have access to each other.
3. Run cd20Mark.py
4. modifiedInfix.py now contains a runnable version of infix.txt.
5. Run modifiedInfix.py to observe the changes after annotation removal.


## Steps to run the Lex Program to handle annotations
1. Store the source file source.txt which contains the input for the Lex program.
2. Run the Lex program - cd.l 
3. The output is the converted annotations to the corresponding codes and the error messages for incorrect usages of annotations. Observe this output.
4. Change the source.txt input to observe how the annotations are detected as well as the significance of each annotation.
