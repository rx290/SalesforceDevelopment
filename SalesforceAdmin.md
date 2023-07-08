# Salesforce

    Salesforce was founded in 1999 by Marc Benioff.
    It is a cloud based solution, which provide on Demand services.
    Salesforce provides all three solutions:
    1. SAAS: Software As A Service
    2. PAAS: Platform As A Service
    3. IAAS: Infrastructure As A Service

    All the limitations of resources of these solutions/cloud is called Governor Limits.

## How Salesforce is SAAS?

    Salesforce comes with pre-installed apps like sales, sales console, community, maket services etc & an app launcher to switch between them therefore it is considered as SAAS.

## How Salesforce is PAAS?

    It provides Developer Console, Inspector Tools and debug logs therefore it is considered as PAAS.

## How Salesforce is IAAS?

    You can check all the provided resources in Setup > storage Usage.
    As we can see how much resources we are consuming i.e. Data, files and Big object storage.
    Therefore it is considered as IAAS.

## Editions

    There are several editions of salesforce which are as follows:
    1. Essential 25$
        
        Comes with only native sales & support apps & it doesn't provide PAAS i.e. coding and inspector tools.

    2. Professional 75$ 
   
        Complete CRM with PAAS Facilities.

    3. Enterprise 150$
   
        Complete CRM, with PAAS and IAAS Facilities.

    4. Unlimited 300$
   
        Complete CRM, with PAAS and Enhanced IAAS/Resources/Storage Facilities.

    5. Developer free for an year

        Practice org with limited resources: 5mb records and 20mb for files & documents.

## Salesforce Apps

    Apps in the ecosystem of salesforce has two definitions which are as follows:
    1. Collection of objects i.e. Collection of different database tables linked with each other.
    2. Collection of tabs i.e. Collection of different links i.e. relationships between different database tables.

### Why apps are use?

    Apps are used to manage and manipulate the records related to the application.

### Type of apps?

    There are two types of apps which are as follows:
        1. Standard Apps: Created by salesforce comes pre-installed or in the form of managed package by salesforce.
        2. Custom Apps: Created by user can be standalone or can be in a form of managed package.

### How to create a custom app?

    Steps to create a custom app are as follows:
        1. Navigate to App manager (Setup > Apps > App manager > New Lightening App)
        2. Provide App Name (Required)
        3. Provide branding and logs (optional)
            If you want to do it then pick color from the color picker or type in the hex code.
            upload image in the image section to make it as a logo.
        4. Select type of navigation which are as follows:
           1. Standard Navigation
           2. Console Navigation
           Stand is common and mostly used.
        5. Select Setup experience which are as follows:
           1. Setup
           2. Service Setup
        6. Select your desired supported devices for the application.
        7. Choose whether customer/clients are able to change nav items or not.
        8. select/deselect whether you want to disable temporary tabs outside of this app or not.
        9. Select utility
        10. Create relationships i.e. add other apps in a link so that your newly created app is connected to them.
        11. Select profile visibility/access.

## Salesforce Objects & Tabs

### Field

    Fields represent Columns in a database table.
    You can say a field/column is an attribute of the table/object's instance.

### Row

    Records represent Rows in a database table.
    Collection of all the attributes of a table/object's instance is called a record/row.

### Salesforce object

    A collection of fields and records is an salesforce object.
    or
    A collection of columns and rows is a salesforce table.

    Note: **You can only create 400 max objects in a developer org**

### Tabs

    A tab can be defined in several ways which are as follows:
        1. Quick Link & Referral Link to a table/object.
        2. UI path to access the object/Table.

    Types:
        There are 6 types of Tabs which are as follows:
            1. Standard Tab (pre=provided)
            2. Custom Tab  (self created)
            3. Web Tab (External Web page tabs)
            4. Visual Force Tab (Tabs to display data from visual force)
            5. Lightning Component Tab (it make Lightning component available in mobile and lightning experience)
            6. Lightning Page Component Tab (it is used to app lightning app pages to the salesforce mobile app and lightning experience bars)

### How to create tabs?

    Following are the steps to create tabs:
        1. Select the object you want to create the tabs on
        2. Select Style of the tab
        3. Select Custom Profile if you the tab is not for everyone otherwise select all.
        4. Select all the apps you can access these tabs from. (tab visibility)
        5. Click on Done and the tab is created.

### How to create an Object?

    Steps to create an object are as follows:
        1. Got to setup > object manger > Click New/Create Button > Select Custom Object
        2. Provide information i.e. name, plural name, has vowels in it or not etc
        3. It is preferred to keep default settings
        4. If you want to create reports, activities and want to keep track of the field history then enable these features in optional feature.
        5. if you want the object to be visible in generic/local or global search then allow search feature from the list.
        6. Now click on launch new wizards to create tabs
            follow how  to create tabs if you still not clear on how to create apps.

