# Notes for Data Types, Data Structure, Escape Sequence and Data Conversion

## Variable

   Variable is a temporarily available space in the memory allocated by a resource manager to store something when the program is running.
   Variable has two phases which are as follows:
      1. Variable Declaration
      2. Variable Initialization

   When a variable name is written along with its data type that phase is called a variable declaration.
   When a variable is called within the program and a value is assigned to it, this is called variable Initialization.
   example:
   Declaration: String greeting;
   Initialization: greeting = 'Hello World';

   Using variable: System.debug(greeting);

## Heap

   Heap is a space in memory usually the size of the ram which is designated/allcated to store the data in runtime.
   For salesforce heap size limit is 6 MB for synchronous transactions and 12 mb for the asynchronous transactions.
   These is the total amount of memory provided by salesforce and apex transaction cannot exceed these limits, therefore batches are used.
   Other wise "Heap Size Too Large" error is thrown, devs uses follwoing techniques to avoid these errors:

   1. **Optimizing data structures**: Using efficient data structures, like sets and maps, can help reduce memory usage.
   2. **Minimizing object creation**: Reducing the number of objects created during a transaction can help conserve memory.
   3. **Using transient variables**: Declaring variables as transient can help reduce memory usage, as these variables are not stored in the heap.
   4. **Batching operations**: Breaking up large transactions into smaller batches can help avoid exceeding the heap size limit.

## Data Types

     There are 11 types of Primitive Data types
       1. Boolean (True/False/Null)
       2. String
       3. Integer (32-bit)
       4. Long (64-bit)
       5. Decimal (32-bit)
       6. Double (64-bit)
       7. Date
       8. Time
       9. Datetime
       10. Blob (Binary Data)
       11. ID (Unique Metadata 15 digit (case sensitive) /18 digit (case insensitive))
       12. Constants (if we add final anywhere before the variable initiation and it will become a constant)
            //Syntax: final decimal pi = 3.14159;
  
## Escape Sequence

         Universally we all use backward slash to escape any character and in apex we also use '\' for escaping special characters some of the most common escape sequences are as follows:
         1. \b one backspace character
         2. \n new line
         3. \r carriage return
         4. \t Tab space depends on org settings generally 4 white spaces are a tab and in some places 8 white spaces are also considered a tab.
         5. \\ on backslash character 
         6. \0 one ASCII null character
  
## Commenting

         Apex uses same commenting mechanism as html or any 3rd generation lanague like C, C++ or jave.
         // for single line comment
         /* */ to encapsulate multi line comment

## Collections/Data Structures in Apex

       1. List (An ordered collection of Same Types of elements)
       syntax: List<type of list> List_name = new List<type of List>{'data', 'with', 'comma', 'as', 'separators'};
       some of the common methods are as follows
          1. Add()
            // will add it to the last index of the list
            syntax: list_name.add(value);
            //will add at the given index and will move other elements on the newer index
            syntax: list_name.add(index,value);
          2. Get()
            syntax: list_name.get(index);
          3. Size()
            syntax: list_name.size();
          4. Remove(index)
            syntax: list_name.remove(index);
          5. Clear()
            syntax: list_name.clear();
          6. toString()
          7. isEmpty()
            syntax: list_name.isEmpty();
          8. sort()
            syntax: list_name.sort();
          9.  equal()
          10. clone()
            syntax: Same_data_type new_list_name = list_name.clone();
          11. contains()
          12. Set()
            syntax: list_name.set(index, value);
      
      How list Stores data?
      A list stores the data based on the indices which means we have an indexed memory and each item would get populated on an index based of First come first serve base.

       
       2. Set (an unordered Distinct Collection of Same type of elements) 
       syntax: Set<type of Set> Set_name = new Set<type of Set>['data', 'with', 'comma', 'as', 'separators'];
       Sets are implemented as hashtables therefore they are not ordered. some of the common methods are as follows
          1. Add()
            //set doesn't use index so no need for indexes
            syntax: set_name.add(item);
          2. Contains()
            syntax: set_name.contains(value);
          3. Remove(value)
            syntax: set_name.remove(value);
          4. Size()
            syntax: set_name.size();
          5. isEmpty()
            syntax: set_name.isEmpty();
          6. Clear()
            syntax: set_name.clear();
          7. Clone()
          8. Equal()
          9. toString()
       
       3. Map (A key value pair collection like dictionaries in python) 
       syntax: Map<type of key, type of Value> Map_name = new Map<type of key, type of Value>(1:'data', 2:'with', 3:'comma', 4:'as', 5:'separators');
       some of the common methods are as follows
          1. Put()
            syntax: map_name.put(key,value);
          2. Get()
            syntax: map_name.get(key);
          3. Remove()
            syntax: map_name.remove(key);
          4. KeySet()
            syntax: map_name.keySet();
          5. Values()
            syntax: map_name.values();
          6. ContainsKey()
            syntax: map_name.containsKey(key);

## Operators

### Arithmetic Operators

         Apex support all the arithmetic and logical operator
         1. Addition (+)
         2. Subtraction (-)
         3. Multiplication (*)
         4. Division (/)
         5. Power (**)
         6. Increment (+=n or x++)
         7. Decrement (-=n or x--)

### Logical Operators

         1. And (&&)
         2. OR (||)
         3. Not (!)
         4. Equality Operator (==)
         5. True Equality Operator (===) checks for data type as well
         6. less than <
         7. greater than >
         8. less than equal to <=
         9. greater than equal to >=
         10.Ternary Operator (?)
            //Syntax (hour <12) ? 'Good Morning' : 'Good Afternoon';

## Datatype Conversion

       1. use Integer.valueOf() for integer conversion
       2. use String.valueOf() for String conversion

## Expression

   Any statement, which gives us a new value when executed i.e. evaluates and process itself by returning a value is called an expression.
   Example:
         DateTime currentDateTime = DateTime.newInstance(2024,12,27,1,16,0);
         // The DateTime.newInstance is an expression in this example
