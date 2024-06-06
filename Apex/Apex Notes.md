# Apex Notes

## DML & Database Classes

    DML: Data Manipulation Language.

    DNL is the input means to the DB.
    SOQL & SOSL are the output means form the DB.

    We use SOQL & SOSL to get data out of the Database.

### Triggers

    Triggers: a piece of code which gets activated on demand.
    
    Triggers are the programmatic approach to automate anything in salesforce.
    Flows, Process builders and others are declarative approaches to the automation.

### Triggers Testing

    It is compulsory to write test classes if you are deploying one apex class to different orgs.
    These test classes are there to test all of the functionalities there in the class.
    Salesforce has its own testing framework and it recommends using that.
    So to automate the process we use triggers.

### User Interface

    The UI element of the salesforce is called visualforce page but this only works with the old framework.
    To create modern UI we have to use lightning framework.

    Requires Javascript

### Governor Limits & Batch Apex

    To avoid system hitting the governor limits we write code to divide our data into chunks.

### APIs abd Integrations

### Deployment Methodologies

    Ways to install your code into the org i.e. changeset, metadata api, managed package.
