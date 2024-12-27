# Notes

## User Experience

    Salesforce has two types of UX that are as follows:
    1. Salesforce Classic: Only UX available till 2014.
    2. Salesforce Lightning: Modern UX, that uses a combination of different elements/components to achieve higher productivity.

### UX Development

    To Develop Salesforce Classic UX we have to use **Visualforce**.

    To Develop Salesforce Lightning UX we have two options, **Aura components** and **Lightning Web Components**.

#### Aura Components

    Created in 2014, was proprieties's by salesforce, is quite mature and based on an internal frameword.

#### Lightning Web Component

    Created in 2018, based on new web standard or stack, natively available in your web browser.
    Therefore much faster than the aura components.

### Backend

    Salesforce uses Oracle DB as it's backend but it ain't open to get interacted.
    We will be using objects and their apis to update that db.
    Salesforce has its own programming language called Apex, which is used to perform CRUD on the tables i.e. objects.

    There are also no-code or low code tools to perform crud on these tables these low code tools are as follows:
    1. Workflow Rules
       1. Can't have child record update
       2. Can only update records
       3. Mostly used to create tasks or to do tasks like send email and outbound messages.
    2. Process Builder
       1. Can't delete a record
       2. Can't update unrelated records
       3. Can update child record
       4. Has more options then workflow rule
       5. Has multi-steps configuration
    3. Visual Flows
       1. Hard to debug
       2. Slower than apex
       3. Most compatible, user friendly and powerful declarative tool
    4. Approval Process

    Salesforce OBjects are table or schema to store your data, column are called fields and rows are called records.

## Development Environments

    There are several ways to write code some of them are as follows:
    1. Apex Class Editor
    2. Developer Console
    3. VS Cloud
    4. Illuminated Cloud

### Code Debugging

    Salesforce doesn't support output console so we have to use log to get our desired out put, here is a very basic program to run in anonymous window.
    system.debug('Hello World!');
    once clicked execute it will generate a log, go to the new log file and hit the option show debug logs only and you'll be able to see the output.

## Keywords and Classes

    There are few reserved words in the salesforce ecosystem that can't be used in programming these words holds some functionality at the backend.
    These reserved words are called keywords.

    Then we have classes which are actually a blueprint of some functionality or model that needs initialization.
    Once Initialized this model is called an instance.

    In above code **System** is a **Class** and **debug** is a **keyword**.

    In any programming, there are symbols like single quotes, parentheses, semicolons, and braces—are often referred to by specific names, and they can be grouped into categories based on their functionality in code. Here's a breakdown of these symbols and their common names:

    1. **Single Quotes (`'`)**
       - **Name**: **Apostrophe** or **Single Quote**
       - **Usage**: Used to denote **character literals** in many programming languages (e.g., `'a'` for the character `a`). In some languages, it can also represent **string delimiters** for single-character strings.

    2. **Double Quotes (`"`)**
       - **Name**: **Quotation Marks** or **Double Quotes**
       - **Usage**: Used to denote **string literals** in many languages (e.g., `"Hello"`). In some programming languages, this can also represent **string delimiters**.

    3. **Parentheses (`()`)**
       - **Name**: **Parentheses**
       - **Usage**: Used to enclose function arguments, **group expressions**, and define **precedence** in mathematical expressions or function calls (e.g., `func(x, y)` or `2 * (3 + 4)`).

    4. **Braces (`{}`)**
       - **Name**: **Braces** or **Curly Brackets**
       - **Usage**: Used to define **blocks of code**, such as the body of functions, loops, conditionals, and classes in many programming languages (e.g., `if (x > 0) { ... }`).

    5. **Square Brackets (`[]`)**
       - **Name**: **Square Brackets**
       - **Usage**: Used for **array indices**, **list definitions**, and in some languages, **type annotations** (e.g., `array[0]` or `list = [1, 2, 3]`).

    6. **Semicolon (`;`)**
       - **Name**: **Semicolon**
       - **Usage**: Acts as a **statement terminator** or **delimiter** in many languages, indicating the end of a statement or command (e.g., `x = 10;`).

    7. **Comma (`,`)**
       - **Name**: **Comma**
       - **Usage**: Used to separate **arguments in function calls**, **items in lists or arrays**, or **parameters in function definitions** (e.g., `func(x, y)` or `list = [1, 2, 3]`).

    8. **Period (`.`)**
       - **Name**: **Dot** or **Period**
       - **Usage**: Used for **member access** in objects or classes, and for separating extensions in file names (e.g., `object.method()` or `file.txt`).

    9. **Colon (`:`)**
       - **Name**: **Colon**
       - **Usage**: Used for **key-value pairs** in dictionaries, **labels**, **loops**, and sometimes in **type annotations** (e.g., `key: value` or `if x == 0:`).

    10. **Double Colon (`::`)**
        - **Name**: **Double Colon**
        - **Usage**: In some languages (like C++), it's used for **scope resolution**, referring to a specific class or namespace (e.g., `Class::method()`).

    11. **Exclamation Mark (`!`)**
        - **Name**: **Exclamation Mark** or **Bang**
        - **Usage**: Used for **negation** (e.g., `!true`), and in some languages, it can denote **exclamation points** in syntax (e.g., `!=` for not equal).

    12. **Tilde (`~`)**
        - **Name**: **Tilde**
        - **Usage**: Used for **bitwise negation** in some languages, or as a shorthand for home directory paths in Unix-based systems (e.g., `~` refers to the home directory).

    13. **Plus (`+`)**
        - **Name**: **Plus**
        - **Usage**: Used for **addition** or **concatenation** in many programming languages (e.g., `x + y` or `"Hello" + " world"`).

    14. **Minus (`-`)**
        - **Name**: **Minus** or **Dash**
        - **Usage**: Used for **subtraction** or to denote a **negative number** (e.g., `x - y` or `-10`).

    15. **Asterisk (`*`)**
        - **Name**: **Asterisk** or **Star**
        - **Usage**: Used for **multiplication** or **dereferencing** pointers in languages like C/C++ (e.g., `x * y` or `*ptr`).

    16. **Slash (`/`)**
        - **Name**: **Slash** or **Forward Slash**
        - **Usage**: Used for **division**, and also to denote **comments** in certain programming languages (e.g., `x / y` or `//` for a single-line comment in languages like C, C++, and Java).

    17. **Backslash (`\`)**
        - **Name**: **Backslash**
        - **Usage**: Used as an **escape character** (e.g., `\n` for a newline or `\\` for a literal backslash).

    18. **Ampersand (`&`)**
        - **Name**: **Ampersand**
        - **Usage**: Used for **address-of** operators, **bitwise AND**, or **concatenation** in some languages (e.g., `&x` or `&a & b`).

    19. **Pipe (`|`)**
        - **Name**: **Pipe**
        - **Usage**: Often used for **bitwise OR**, **logical OR**, or for **piping output** in command-line operations (e.g., `|` for logical OR or `command1 | command2` in shell scripting).

    20. **Greater Than (`>`) and Less Than (`<`)**
        - **Name**: **Greater Than** and **Less Than**
        - **Usage**: Used for **comparisons** (e.g., `x > y` or `x < y`).

    21. **Equal (`=`)**
        - **Name**: **Equal Sign** or **Assignment Operator**
        - **Usage**: Used for **assignment** (e.g., `x = 10`), and in some languages, it is used for **comparison** (e.g., `==` in languages like C, C++, and Java).

    22. **Question Mark (`?`)**
        - **Name**: **Question Mark**
        - **Usage**: Used in **ternary operators** and sometimes in **pattern matching** (e.g., `condition ? x : y`).

    23. **Arrow (`->`)**
        - **Name**: **Arrow**
        - **Usage**: Used for **pointer dereferencing** in C/C++, or for lambda functions in languages like Python (`lambda x: x + 1`).

    24. **At Symbol (`@`)**
        - **Name**: **At Symbol**
        - **Usage**: Used in **decorators** (Python), **annotations** (Java), or as an **email delimiter** (e.g., `user@example.com`).

    25. **Dollar Sign (`$`)**
        - **Name**: **Dollar Sign**
        - **Usage**: Often used to denote variables in shell scripting or PHP (e.g., `$variable`).

### Collective Term for These Symbols

While there isn’t a single term that encompasses all of these symbols, they are commonly referred to as **punctuation marks** or **special characters** in the context of programming. They may also be grouped into categories such as:

- **Operators**: Symbols that perform operations (e.g., `+`, `-`, `*`, `/`, `&`, `|`, `=`, `==`).
- **Delimiters**: Symbols that separate or enclose parts of code (e.g., parentheses, brackets, braces, commas, semicolons).
- **Brackets**: Parentheses `()`, Square brackets `[]`, and Curly braces `{}` are often collectively called "brackets" or "braces."
- **Punctuation**: Symbols used for separating statements or expressing certain commands (e.g., `;`, `,`, `.`).

These names may vary slightly depending on the language or context, but the functions generally align with these descriptions across most programming languages.
