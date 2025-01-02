# Governor Limits and Code Bulkification

    Salesforce is a multi-tenant cloud which means multiple customer share the same resource of salesforce application server.
    Governor Limits are fair rules of usage for common resource which ensures that no customer is abusing any common resource.
    These governor limits make sure of following things:
        1. Fair Usage Policy
        2. System Resource Threshold irrespective of customer size


    There are different types of limits which are as follows:
        1. Transaction based limits: which applies on the resource being consumed per transaction e.g no of soql queries, or cpu runtime for each transaction.
        2. Org base limits: these are either daily, weekly or monthly basis like number of emails you can send or number of bulk job that can be ran parallel both of these are 24 hours based limits.

    There are a lot of Governors and Limits in salesforce some of them are as follows:
        1. Per-Transaction Apex Limits
        2. Per-Transaction Certified Managed Package Limits
        3. Lightning Platform Apex Limits
        4. Static Apex Limits
        5. Size-Specific Apex Limits
        6. Miscellaneous Apex Limits

## Per-Transaction Apex Limits

    These limits count for each apex transaction, for batch apex these limits are per execution of the a batch and is calculated based on the execute method.
    Following Table will give you an idea of Synchronous Limits and Asynchronous Limits
            |       Description           |        Synchronous Limits        |             Asynchronous Limits              |
            | -------------------------   | -------------------------------- | -------------------------------------------- |
            | T.No of SOQL Queries Issued | 100        | 200                        |
            | T.No of records retried by SOQL Queries | 50,000 |
            | T.No of records retried by Database.getQueryLocator | 10,000 |
            | T.No of SOSL Queries Issued                 | Not required                     | Required                                     |
            | T.No of records retreived by a single SOSL Query   | Same name, different signature   | Same name, same signature                    |
            | T.No of DML Statement issued                 | Can be same or different         | Must be same or co-variant                   |
            | T.No of records processed as a result of DML Statement                     | Static binding                   | Dynamic binding                              |
            | Private and Final Methods   | Can be overloaded                | Cannot be overridden                         |
            | Argument List               | Must be different                | Must be same                                 |
            | Return Type                 | Can be same or different         | Must be same or co-variant                   |
            | Binding                     | Static binding                   | Dynamic binding                              |
            | Private and Final Methods   | Can be overloaded                | Cannot be overridden                         |
            | Argument List               | Must be different                | Must be same                                 |

.. Update it later

## Apex Transaction

    Apex transaction is a process where a set of operations are applied on the data to change its state in one.
    If the operations are successful then it is called a successful transaction, otherwise even if only one operation fails the entire state of the data is reverted and this process is called Rollback.

## Bulkification

    Bulkification is an optimization process where we make sure that our SOQL and SOSL queries are optimized and smart enough to handle single or multiple records at a time.

    Why Bulkification?
        Well bulkification has following benefits:
            1. It consumes least amount of resources.
            2. Has lower chances of hitting governor limits.
            3. It reduces the transaction execution time.

    Tip:
        Never write SOQL or SOSL or any DML statements in loops.

## Known Errors

    There are many errors some of those are as follows:
        1. SOQL 101 Limit
            it is generally known as Too Many SOQL queries:101 error.
            This is thrown when we are trying to execute more than 100 DML statements in one go.
        2. DML Operation Limit
            There are many DML operation Limits that can be breached like: Too Many DML Statement:151 if you try to update more than 150 records in one go
        3. CPU Timeout Exception
            Any transaction happening in salesforce should only take 10k milliseconds if getting called synchronously and 60k if as asynchronously.
            Mainly this happens when our transaction is handling large amount of data.
            This error is thrown then: Apex CPU time limit Exceed.
        4. Heap Size Limit

## Prevention

    we can get the current limit usage in apex by using some methods from the limit class.

    The methods are as follows:
        1. getDMLStatement():
            This method returns the total no. of DML statement i.e. CRUD or database.EmptyRecycleBin have been called.
        2. getHeapSize():
            This method returns the approximate amount of memory (in bytes) that has been used for the heap.
        3. getLimitDMLStatements():
            This method returns the total no. of DML statements or the database.emptyRecycleBin methods that can be called.
        4. getLimitHeapSize():
            This method returns the total amount of memory (in bytes) that is available for use for the heap.
        
        // There are many more I will list few of them down

        5. getAggregateQueries(): 
            returns no of aggregate queries that have been processed so far with any SOQL Query statement.
        6. getLimitAggregateQueries():
            returns no of aggregate queries remaining that can be processed with any SOQL Query statement.
        7. getAsyncCalls():
            reserved for future calls
        8. getLimitAsyncCalls():
            reserved for future calls
        9. getCallouts():
            returns the no. of web service statement that has been processed.
        10. getLimitCallouts():
            returns the no. of web service statement that has can be processed.
        11. getCpuTime():
            returns the CPU time that has been used in the current transaction.
        12. getLimitCpuTime():
            returns the maximum CPU time that can be used in the current transaction.
        13. getDMLRows():
            returns the no of records that have been processed with any statement that counts against DML limits, such as DML Statement, the database.emptyRecycleBin method and other methods.
        14. getLimitDMLRows():
            returns the no of records that can be processed with any statement that counts against DML limits, such as DML Statement, the database.emptyRecycleBin method and other methods.
        15. getEmailInvocations():
            returns the no of email invocations (such as sendemail) tha have been called.
        16. getLimitEmailInvocations():
            returns the no of email invocations (such as sendemail) tha can be called.
            