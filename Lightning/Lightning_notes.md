# Introduction to Lightning

## What is lightning?

    Lightning is a User Interface framework to develop web apps for responsive mobile and desktop devices.
    It is a modern framework which is developed to create single page application with dynamic user responsive interfaces for lightning platform apps.
    It uses javascript for the client side and apex for the server side.
    It is a component based architecture, these components are reuseable 
## Why?

    There are two UIs that salesforce offers that are as follows:
    1. Salesforce Classic
    2. Lightning 


    Salesforce classic is based on aura components which are outdated and are not dynamic or responsive.

    Lightning on the other hand has responsive design and layout meaning all the component will resize/adjust themselves as per the screen size.
    You can also say lightning component is a reuseable component of a webapp which is made up of combination of markups, some javascript and css.
    We cannot run a lightning component directly we have to create a lightning application bundle i.e a container for it to run.

## How to start development?

    There are few steps to start developing lightning apps and here are those steps:
        1. Go to setup, type Domain in setup search, Enable my domains, select your domain name, check for availability and register it.
        2. Once ready, you have to deploy it once deployed we can move to lightning development.
        3. Write a class, always with sharing option using some controller following the MVC approach, define some functions in there.
        4. now Open up dev console, click on new in the menu, from the sub menu click on Lightning app.
        5. You will now greeted with a name.app page which will have following things:
           1. Aura markups which will indicate the app.
           2. App preview on the right hand side.
        6. Simply Write Hello World between the tags.
        7. You then needs to visit the url created earlier and you will see your first lightning widget.

## Lightning Component Tags/Parts 