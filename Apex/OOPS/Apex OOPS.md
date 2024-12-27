# OOPS in Apex

    In Apex we have only 4 access specifiers which are as follows:
                1. Private (private access is the default access specifier in Apex)
                    Private can only be used with followings:
                        1. Variables
                        2. Methods
                        3. Inner Classes i.e. main class can't be set to private but anything within it can be private
                2. Protected(Only Inner classes and extended classes can access protected items)
                    Not available for the main classes like private access specifier.
                    Can only be used with followings:
                        1. Variables and Methods
                3. Public
                    Unrestricted access within the same namespace.
                    Can be used with followings:
                        1. Classes
                        2. Variables
                        3. Methods
                4. Global
                    Unrestricted access to everything from anywhere

    We will use top to bottom approach when dealing with access restriction, private being the most restricted and Global being the least restrictive.

## Methods

    Syntax:
        Access_Modifier Special_Keyword Return_type Method_Name (Parameters){
            Code Block;
        }

        public static Integer add(Integer num1, Integer Num2){
            Integer sum = num1 + num2;
            return sum;
        }

    Access Modifier: Lets you handle the scope of the method
    Return Type: Lets you tell the compiler what would the method return after executing
    Special Keyword: Lets you set type of method i.e is it going to be static or override
    Parameters: These are optional variables that will be passed for further processing within the methods.

    Note: void methods should not return anything.
    
## polymorphism in Apex

    There are two things in polymorphism one is overloading and other is overriding.
    
    Overloading is when you are changing the signature of the existing method by adding a new parameter or renaming the existing one.
    Overloading is compile-time polymorphism.

    Overriding means that a subclass is going to provide a specific implementation of the superclass method.
    Everything else remain same, name , return type and even parameters.
    Overriding is a run-time polymorphism.

## Static Keyword and Block

    The special keyword when added to a method or a variable, it is exempted from being their possession or ownership, it is elevated to a point of independence and itself becomes an entity.
    Static variables can't be used with the class instances/objects as these variables are attached to the class itself.
    Static Variables should only be used with static methods!

    Example:
        public class Covid19 {
        public Integer recoveredInArea=0;
        public static Integer recoveredInCountry=0;
        
        
        public void treatPatient(){
            recoveredInArea++;
            recoveredInCountry++;
                }
                
            }

        Code in anonymous window:
            Covid19 Lahore =new Covid19();
            system.debug('Recovered in Lahore: '+Lahore.recoveredInArea);
            system.debug('Recovered in Country: '+Covid19.recoveredInCountry);
            Lahore.treatPatient();
            system.debug('Recovered in Lahore: '+Lahore.recoveredInArea);
            system.debug('Recovered in Country: '+Covid19.recoveredInCountry);

            Covid19 Islamabad = new Covid19();
            system.debug('Recovered in Islamabad: '+Islamabad.recoveredInArea);
            system.debug('Recovered in Country: '+Covid19.recoveredInCountry);
            Islamabad.treatPatient();
            system.debug('Recovered in Islamabad: '+Islamabad.recoveredInArea);
            system.debug('Recovered in Country: '+Covid19.recoveredInCountry);

        Static Block is only executed once and you can declare all of your static variable in it.
        Syntax:
            static{

            }

## Constructors

    An code block that is invoked autonomously when a class is initialized.
    We can overload the constructor to initialized our variables.
    Syntax:
        public Covid19(){
            system.debug('Constructor is called!');
        }

## This keyword

    this is a keyword which represent the class instance. it is mostly used to point toward a global variable.
    We can also use it to call default constructors when using an overloaded constructor.
    example:
        public Covid19(){
            system.debug('Overloaded simple constructor with no prams.');
        }
        public Covid19(Integer recoverdInArea){
            this(); //this will call above constructor
            this.recoveredInArea = recoveredInArea;
            recoveredInCountry = recoveredInCounty;
        }

## initialization Block

    There is something similar to a constructor that can also be utilized to initialize the variables.
    This block has no name and no parameters it is initialized with only two Curly Braces {}.
    It is called an initialization block.
    it will be executed on the class instance creation.
    No user input values would be entertained in initialization block.

## Inner Class

    A subclass that is a part of a main class.
    example:
        public class livingBeings{
            private class animals{
            }
        }
