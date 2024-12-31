# Exception Handling

## Throw Statement

    Exception are anomalies that disrupt the normal flow fo code execution.
    Apex uses exception to note and notify such errors and other events.
    user can use throw keyword to generate an exception programmatically.
    syntax:
        throw new NullPointerException();

## Try, Catch and Finally

    Try, Catch and Finally are three statements that helps us handle an exception thrown gracefully and recover from it.

    Syntax:
        System.debug('Before Exception');
        try{
            integer i = 10/0 //throws an exception
        }
        Catch (MathException e){
            //catch exception here and do something
        }
        Finally{
            //Optional Block
        }
        System.debug('After Exception');

### Catch vs Finally

    Catch block only executes if the exception was thrown in try block and matches it's exception type.

    Finally block will always execute regardless of whether an exception was thrown.

## Built-in Exception

    There are many built-in exception some of them are as follows:
        1. AsyncException: get thrown on any asynchronous operation fail.
        2. CalloutException: get thrown on any web service operation fail.
        3. DmlException: get thrown on any dml statement error.
        4. EmailException: get thrown on any email delivery fail.
        5. IllegalArgumentException: get thrown when parsing an illegal argument to a method call.
        6. InvalidParameterValueException: get thrown on any invalid parameter supplied for a method or a problem with URL used on visualforce Pages.
        7. LimitException: A governor limit has exceeded, these exceptions can't be caught.
        8. JSONException: get thrown on any Json serialization and deserialization fail.
        9. MathException: get thrown on any arithmetic operation fail.
        10. NoAccessException:  get thrown on any unauthorized access.
        11. NoDatafoundException: get thrown on non existent data.
        12. SObjectException: get thrown on any illegal change on field i.e. a field is only allowed to get updated on insert but was attempted to get update by update operator.
        13. VisualForceException: get thrown on any issue with visualforce page.
        14. XmlException: get thrown on any read/write operation fail on xml by XmlStream Class.
        15. TypeException: get thrown on any type casting/conversion fail.
        16. StringException: get thrown on any string that is exceeding heap size.
        17. BigObjectException: get thrown on any big object record operation fail i.e connection time out during attempt to access the record or inserting the record.

## Custom Exception

    You need to create an exception if it is not there or you want to throw a custom message to do so, you need to create a class that extends Exception.
    example:
        public class ProcessException extends Exception{
            //implementation here 
        }

        // Use it in your code like this

        try{

            throw new ProcessException('My custom exception'); 

        }
        catch(Exception e){
            System.debug('Cause '+e.getCause());
            System.debug('Message '+e.getMessage());
            System.debug('Line Number'+e.getLineNumber());
            System.debug('Stack Trace '+e.getStackTraceString());
        }
        finally{
            
            System.debug('Finally block called');
        }
    