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