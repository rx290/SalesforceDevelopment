# Introduction

    This certification is intended for the candidates who have skills for a full stack developer.
    
    Prerequisites for this certificate is only a super badge called "**The Lightning Web Components Specialist**".\

    To clear certification we need following things:
    1. Clear MCQ based Proctored Exams
    2. Attain The Lightning Web Component Specialist Super badge.

## Trails

    There are two trails available for following course which are as follows:
    1. Prepare for your salesforce javascript developer 1 credentials (https://trailhead.salesforce.com/users/strailhead/trailmixes/prepare-for-your-salesforce-javascript-developer-i-credential)
    2. Study for the Salesforce Javascript Developer I Exam (https://trailhead.salesforce.com/content/learn/trails/study-for-the-salesforce-javascript-developer-i-exam)

## Notes For Trail 1

## Note for Trail 2

### JavaScript Skills for Salesforce Developers

#### Javascript engine vs Browser

    1. Javascript is not the browser nor is the browser javascript
    2. A browser is an application that act like a client for a web server. It requests resources over the internet using protocols. It has the capability to render css and Html markup language.
    3. Javascript engine is hosted inside of the browser and when a browser recieves a javascript code it it actually reaches to the hosted javascript server and parse, evaluate and execute the code from it.
    4. All of the CRUD operations performed are based on interactions and these interactions are possible due to APIs.
    5. Most of the client-side javascript is actually browsers surface APIs.
    6. There are gazillion browsers out there hence the need of web standards and therefore javascript can be written once and can run from anywhere.

#### API

    Application Programmatic Interface is collectively known as API, it is a interface which grants user access to the programmatic approach.

### Javascript Runtime

### How JS work?

    1. Requests execute on the stack using a single thread.
    2. A request holds the thread until it is done executing all synchronous logic for that request.
    3. New requests are queued until the thread is ready.
    4. The event loop moves the next queued request into the stack when it becomes available.

### What APIs can do?

    1. Interact with the structure of the current page rendered in the browser (Document Object Model or DOM API)
    2. Perform asynchronous requests to the server without leaving the current page (Fetch API)
    3. Interact with audio, video, and graphics
    4. Interact with device features surfaced to the browser (geolocation, device orientation, client-side data storage)

### Third party APIS and Libraries

    These are important aspect and module of JS as they enable both JS and Browser to extend its capabilities.
    We will be using a framework called Lightning Component Framework.
    We are using this framework because it will allow us to use Lightning Web Component Development Model.

### The Document Object Model

    Whenever a web page is requested and is received by the browser. The browser parses the html and create a model of that page.
    This model is used to draw the page in the viewport, it is also used by JS through the DORM.
    You can think of the DOM as a Tree and following is how it is encapsulates its components:
        1. Window (Root / Display Functionality)
           1. Document (Parent)
              1. Body (Child, who has grand children)
                 1. Div
                    1. input
                    2. Button
                 2. Div
                    1. Unordered List
                       1. List Item
                       2. List Item

To access these we go like this window.document.body.div.input

### Shadow DOM

    DOM api is rich and flexible, it allows us to change the looks, bheviours and actions invoked by the User Interface using simple JS.
    The downside of DOM is that it is quite difficult to encapsulate the pieces of UI from unwanted or desired changes.
    For this particular reason a standard was developed called Shadow DOM.
    It creates a boundary around particular part of UI functionality, that boundary then prevents the elements or css of a child from changing.
    It also forces events and behaviors across the boundary to rescope their targets preventing parent from reaching across the shadow DOM boundary,

### Automatic DOM Updates

    The fundamental value of Lightning components is in building a custom UI driven by Salesforce data. This ties in to DOM manipulation because the DOM itself is driven by Salesforce data. 