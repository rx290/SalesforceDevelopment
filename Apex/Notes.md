# Notes

    1. Each Apex program is aloted 6mb of heap.
    
    2. There are 11 types of Primitive Data types
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
    
    3. Escape Sequence
         Universally we all use backward slash to escape any character and in apex we also use '\' for escaping special characters some of the most common escape sequences are as follows:
         1. \b one backspace character
         2. \n new line
         3. \r carriage return
         4. \t Tab space depends on org settings generally 4 white spaces are a tab and in some places 8 white spaces are also considered a tab.
         5. \\ on backslash character 
         6. \0 one ASCII null character
    
    4. Commenting
         Apex uses same commenting mechanism as html or any 3rd generation lanague like C, C++ or jave.
         // for single line comment
         /* */ to encapsulate multi line comment

    5. Collections in Apex
       1. List (Same Type) syntax: List<type of list> List name = new List<type of List>{'data', 'with', 'comma', 'as', 'separators'}, some of the common methods are as follows
          1. Add()
          2. Get()
          3. Size()
          4. Remove(index)
          5. Clear()
          6. toString()
          7. isEmpty()
          8. sort()
          9.  equal()
          10. clone()
          11. contains()
          12. Set()
       
       2. Set (unordered Distinct Collection of Same type) syntax: Set<type of Set> Set name = new Set<type of Set>['data', 'with', 'comma', 'as', 'separators'], Sets are implemented as hashtables therefore they are not ordered. some of the common methods are as follows
          1. Add()
          2. Contains()
          3. Remove(value)
          4. Size()
          5. isEmpty()
          6. Clear()
          7. Clone()
          8. Equal()
          9. toString()
       
       3. Map (A key value pair collection like dictionaries in python) syntax: Map<type of key, type of Value> Map name = new Map<type of key, type of Value>(1:'data', 2:'with', 3:'comma', 4:'as', 5:'separators'), some of the common methods are as follows
          1. Put()
          2. Get()
          3. Remove()
          4. KeySet()
          5. Values()
          6. ContainsKey()
    
    6. Operators
         Apex support all the arithmetic and logical operator
         1. Addition (+)
         2. Subtraction (-)
         3. Multiplication (*)
         4. Division (/)
         5. Power (**)
         6. Increment (+=1)
         7. Decrement (-=1)
         8. And (&&)
         9. OR (||)
         10. Not (!)
         11. Equality Operator (==)
         12. True Equality Operator (===) checks for data type as well
         13. less than <
         14. greater than >
         15. less than equal to <=
         16. greater than equal to >=
         17. Ternary Operator (?)
    
    7. Datatype Conversion
       1. use Integer.valueOf() for integer conversion
       2. use String.valueOf() for String conversion