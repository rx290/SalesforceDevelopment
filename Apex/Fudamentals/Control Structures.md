# Control Structures

## Conditional Statements

    Conditional statements let you control the flow of your code. We have few conditional statements in apex that are as follows:
    1. If-Else Statements
        Syntax:
        if(True Expression){
            Code Block
        }
        else{
            What to do code block if expression is not true
        }
    
    2. Nested If-Else
        Syntax:
        if(True Expression){
            Code Block
        }
        else if (second true condition) {
            code Block for 2nd condition
        }
        ...
        else if (nth true condition){
            code Block for nth condition
        }
        else{
            What to do code block if no expression is true
        }

    3. Switch-When Statement
        Checks one expression for multiple values and let you control the execution flow accordingly.
        Syntax:
        switch on variable{
            when value{
                code block for 1st value
            }
            when second value{
                code block for 2nd value
            }
            when nth value{
                code block for nth value
            }
        }

        you can use multiple values by separating them using a comma.

        There is another statement called when else, this code block is executed when nothing matches.
        it comes in the last and looks like this:
        Syntax:
            When else {
                code block
            }

## Loops

    A process to iterate over a set of values is called a loop we have different type of loops in apex that are as follows:
        1. For Loop
            Simple yet powerful control structure as it has everything the initialization, condition and the increment statement in a single line.
            syntax: for (integer age=18;year<=100;year++){
                code block
            }
        2. While loop
            A procedural control structure that will continue to execute until a certain condition is met, but unlike Do-while loop the condition is checked initially before the code block is executed.
            syntax
            while(condition){
                code block
                some condition to make the process meet the condition;
            }
        3. Do-While Loop

            This loop continues doing something until a certain condition ain't met, unlike while loop this loop is always executed once.
            syntax:
            do {
                code block
            } while (condition)
            note: there should a code statement inside of code block to make the process to meet the condition at some point of the execution.
        4. List/Set Iteration For Loop
            it helps you iterates over all the element of a list or a set.
            syntax:
                for(loop variable : list/set variable){
                    code block
                }

            example:
            List<integer> rollNumbers new List<Integer>{101,102,103,106,109,111};
                for (Integer rollNumber : rollNumbers){
                    system.debug('Student RN: '+rollNumber);
                }

## Break statement

    This is a statement to exit the iteration created by loops before meeting the terminating condition.
    // syntax: break;

## Continue Statement

    This is a pass statement, i.e. the step on which continue statement is used the iteration will be skipped or stopped at that point and will start the next iteration in a loop.
    //syntax: continue;

## List Iteration

    This is a type of for loop that is designed to iterate over a list quite easily.
    The syntax is quite different from a generic for loop.
    Syntax:
        for (Integer Loop_Variable : List_Name){
            code block
        }

    Example:
        List<Integer> rollNumbers = new List<Integer>{1101,1324,1325,5355,7444};

        for (integer rollnumber : rollnumbers){
            system.debug('Student RN: '+rollnumber);
        }

    