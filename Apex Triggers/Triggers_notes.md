# Triggers

    In general, a database trigger is a special set of operations that runs when a specific action/s occur within a database.
    Triggers are defined to run whn changes are made to the table.
    
    In apex Triggers are programmatic way of automating any process.
    Apex trigger is a piece of apex code that is executed when a specific action has occur within a salesforce object.
    Apex triggers are defined to run when changes are made to an Object's records.

    There are several events that can invoke a trigger which are as follows:
        1. Insert
            before insert
            after insert
        2. Update
            before update
            after update
        3. Delete
            before delete
            after delete
        4. Merge
        5. Upsert
        6. Undelete
            after undelete


    The triggers are of two types:
        7. After
        8. Before


    That means triggers have two states for all of the above stated invocations.

## Trigger Syntax

    trigger Trigger_Name on object (type operation, type operation // if multi invocation is required){
        //trigger code here
    }

    example:
        trigger testTrigger on Case(after Insert){
            // implementation here
        }

## Why write triggers?

    Triggers have practically no limitations unlike flows, processbuilder, workflow rules etc.
    That's the reason why triggers are crucial and important to have and are extremely helpful in automating the business processes.
    Triggers limitation is only the imagination of the dev.
    Triggers are very practical to implement complex validation.
    Triggers can be used to communicate with the third-party systems when data changes in salesforce.
    Triggers are extremely fasts, takes less computation and are prioritized and executed quite early in the execution cycle.
