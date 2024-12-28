# Salesforce Object Query Language, SObjects and DML

## SOQL

    SOQL is short form of Salesforce Object Query Language.
    SOQL is only used to retrieve the records form the objects.

### Retrieving SObjects records

    We will be using click point tool and the steps to do so are as follows:
        1. Open Dev Console
        2. Click on File, from the dropdown menu click on Open resource or hit ctrl+shift+o or cmd+shift+O
        3. Then search for the object in the resource manager, once listed double click on it to open the resource.
        4. All the field names will be displayed, hold cmd or ctrl key to select multiple, after selection hit query.
        5. This will open up query editor.
        6. Click on the query button again and a soql command is generated
        7. Once SOQL is generated click on execute button to fetch those fields of the desired object.

## Understanding SOQL

    Two keywords are required in all SOQL queries.
        1. Select: used to mark or identify mentioned field
        2. From: used to identify target object

        Syntax:
            Select field_names_comma_saparated from object_name;
        Example:
            select id,name,phone from Account;

### Common SOQL things

    We use where clause to do a filter result with conditions
        Syntax:
            Select id,name from account where name like %as%;

        Multi-condition:
            Select id,name from account where name like %as% and status!= 'closed';

        In keyword:
            Syntax:
                Select id from accounts where status in ('pending','closed','No Response');

        Sorting:
            Syntax:
                Select id from accounts where status in ('pending','closed','No Response') order by createddate;
                Select id from accounts where status in ('pending','closed','No Response') order by createddate Desc;
                Select id from accounts where status in ('pending','closed','No Response') order by createddate Null First;

        Limit and Offsets:
            limit is used to display only a certain amount of records
            example:
                select id, subject from case limit 200;

            Offsets is used to ignore certain number of records
            example:
                select id, subject from case offset 10;
        
        Operators:
            There are several operators in soql which are as follows:
                1. Equality ==
                2. Equal =
                3. Not equal !=
                4. Greater than >
                5. Less than <
                6. Greater than equal to >=
                7. Less than equal to <=
                8. Like
                9. In
                10. Not In

         Date and DateTime Format:
            Date Format - Year-Month-Day
            DateTimeFormat - Year-Month-Dayhours:minutes:seconds+hh:mm
            DateTimeFormat - Year-Month-Dayhours:minutes:seconds-hh:mm
            DateTimeFormat - Year-Month-Dayhours:minutes:secondsZ

            Date Literals:
                1. Today
                2. Yesterday
                3. Tomorrow
                4. Last_week
                5. Last_month
                6. Last_year
                7. Last_Quarter
                8. This_week
                5. This_month
                6. This_year
                7. This_Quarter
                8. Next_week
                5. Next_month
                6. Next_year
                7. Next_Quarter
                8. Last_N_days:n
                9. Last_N_Months:n
                10. Next_N_days:n
                11. Next_N_months:n
                12. Last_N_weeks:n
                13. Last_N_year:n
                14. next_N_weeks:n
                15. next_N_years:n
                16. last_90_days
                15. next_90_days

## DML

    Data Manipulation Language is full form of DML it is used to perform CRUD on your objects.
    Types of CRUD operations:
        1. Creation: Insert Operation
            Syntax:
                Account acc =new Account(Name='some account name',phone ='090078601');
                insert acc;
                // Database.insert(accounts,false) allows partial success which means failed records will be discarded
        2. Reading: Select Operation
        3. Updated: Modify Operation, required unique identifier
            Syntax: 
                <!-- Account acc = new Account(Name='some name',Phone='some phone');
                Acoountcontroller.insertAccount(ass); -->

                List<Account> accounts = [select id, Name,Phone from Account where Name = 'some name'];
                for (account acc: accounts){
                    acc.Name = 'SFDCFacts Academy';
                }

                update accounts;
                //Alternate way to update records
                Database.update(accounts,true);
        4. Delete: Delete Operation, required unique identifier
            Syntax:
                List<Account> accounts = [select id from account where name like '%Test Account%'];
                delete accounts;
                 //Alternate way to delete records
                // Database.delete(accounts);
        5. UnDelete: undo Delete Operation, required unique identifier to revert changes
            syntax:
                List<Account> accounts = [select id from account where name like '%Test Account%' and isDeleted =true];
                undelete accounts;
                 //Alternate way to undelete records
                // Database.undelete(accounts);

### Database Methods vs DML Statement

    In Database Methods you can control partial record process, but no exception is thrown and a result array is returned.
    Syntax:
        Database,saveResultsp[] srList = Database.insert(accList,false);

    In DML Statements Partial processing is not allowed it always raises an exception.
    Syntax:
        Insert accList;

## SObject

    any standard or custom object is an Sobject.
    We can use Sobject as a datatype for collections or variable of any standard or custom object.
    Example:
        //Retrieve all books and assign to a list collection
        list<SObject> books = [Select Name,price__c from Book__c];
        for (SObject book:books){
            //get is actually a method for SObjects to find the relevant field
            // get method will return an object type therefore it is important to typecase it, there are two methods to type cast both are performed in the example below.
            system.debug('Book Name: '+String.ValueOf(book.get('Name'))+ ' Book Price: '+ (String)book.get('Price__c'));
        }

    Example 2:
        // Getting parent object
        //Retrieve all books with respected authors and assign to a list collection
        list<SObject> books = [Select Name,price__c, Author__r.name from Book__c];
        for (SObject book:books){
            //getSobject is actually a method for SObjects to find the relevant sobject
            system.debug('Book Name: '+String.ValueOf(book.get('Name'))+ ' Book Price: '+ (String)book.get('Price__c')+' Author Name: '+(string) book.getSobject(Author__r).get(Name));
        }

        // we can also use getSObjects to gather the list of all children of a parent
        example:
            Sobject [] contactsDB = a.get(0).getSobjects('contacts');

### Creating SObject

    Syntax:
        SObject contactRec = (Sobject) Type.forName('Contact').newInstance();
        contactRec.put('Name','Sample SObject Account');
        contactRec.put('Phone','090078601');

        insert contactRec;
        