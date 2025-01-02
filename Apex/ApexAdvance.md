# Advance Apex

    We will be covering some advance topics in this section which are as follows:
        1. Aggregate Function
        2. Group By Clause
        3. Having Clause
        4. SOQL For Loop

## Aggregate Functions

    Aggregate functions are functions that allow you to doll up and summarize your data in a query.
    Here is a list of aggregate functions available:
        1. count():  returns number of records of the object
            select count() from case;
        2. count(FieldName): returns the number of records for the specified fields
            select count(id) from case;
        3. count_Distinct(): returns only distinct non null-field values
            select count(caseNumber) from case;
        4. AVG(): returns the average of a numeric field
            select avg(resolution_days_c) from case;
        5. Min(): return the smallest value of a field
            select Min(salary) from employees;
        6. Max(): returns the largest value of a field
            select Max(salary) from employees;
        7. Sum(): returns the total sum of a numeric field
            select Sum(profit_earned) from profit;

        When we run these aggregate function in apex, it won't return list of SObjects it return aggregate result or array of aggregate results.
        we have to retrieve our aggregate result from the aggregate array.

        example:
            AggregateResult[] groupedResults
             = [select AVG(Amount), Max(Amount) from opportunity];

             Double avgAmount = Double.valueOf(groupedResults[0].get('expr0'));
             Double MaxAmount = Double.valueOf(groupedResults[1].get('expr1'));

             or to avoid the expression calling we can use alias which is just a name for a column
             AggregateResult[] groupedResults
             = [select AVG(Amount) avgAmount, Max(Amount) maxAmount from opportunity];

             Double avgAmount = Double.valueOf(groupedResults[0].get('avgAmount'));
             Double MaxAmount = Double.valueOf(groupedResults[1].get('MaxAmount'));

## Group By Clause

    This function is there to group the result of the query with a field/field or so.

    example:
        select id, title, caseNumber, closedDate from case group by priority__c;

## Having Clause

    This is one of many ways to filter results in SOQL.
    This is an optional clause and is used to filter aggregated return.
    example:

        select id, title, amount, priority, department from cases where priority == 'High' group by priority having sum(amount)>20000;

## SOQL For Loop

    It is a for loop that helps you optimize the head size of your code.
    it does not store anything, it is used when some calculation needs to be computed on the go for the result.

    example:
        for aggregateResults results: [select StageName, Max(Amount). Min(Amount), Avg(Amount) from opportunity ]
        System.debug('StageName: '+result.get('StageName')+ 'Max Amount: '+result.get(expr0) +'Min Amount: '+result.get(expr1), 'Avg Amount: '+result.get(expr2));


