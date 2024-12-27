# Testing in Apex

## Annotations

    An apex tag that tells other about how the class/variable is used.
    we have different kinds of annotations some of them are as follows:
        1. @Deprecated
        2. @AuraEnabled(cacheable=true): Used to call methods from aura components or web components
        3. @Future
        4. @invocableMethod: used to make methods available to be invoked from Process Builder and Flows
        5. @InvocableVariable
        6. @IsTest
        7. @ReadOnly
        8. @RemoteAction
        9. @TestSetup
        10. @TestVisible

## Testing

    In apex testing is the fundamental key for successful long-term development, it is crucial and is a critical component of the development process.
    **At least 75% of code coverage is required to move code to prod from a sandbox.**

### Types of Testing

    There are multiple types of testing which are as follows:
        1. Unit Testing: Mostly done by Devs and is responsibility of devs
        2. System Integration Testing: can be performed manually or can be automated
        3. User Acceptance Testing (UAT)

### Unit Testing

    Unit testing is to divide code into small manageable chunk and they test them individually(unit).
    How is it done?
    We define results that our code should produce for certain input values to verify the expected behavior.
    Each method represents a method.

### Test Execution

    We can run test both manually and can be automated.
    We can run test manually from dev console or cli.
    For Automation we have something called **Test Runner**, a test-runner is a UI provided by salesforce that runs all the written test, unit test is a function that is executed by test runner.
    Test runner runs on deployment and it will only allow if code coverage is over 75% and all test passes.

## Test Definition

    When writing test we define following things:
        1. A short description about what is being tested.
        2. The unit itself, i.e. part that is being tested.
        3. Test data which is going to be input as parameters to the written code
        4. Some known results that are expected by the code to get produced.

## What to test?

    We need to test following things:
        1. How our code behaves for a single action
        2. How our code behaves for bulk actions.
        3. What is the positive/expected behavior?
        4. What is the negative/not-expected behavior?
        5. How would the action perform with a restricted User?

## Test Class

    syntax:
        @isTest //annotation to let apex know this is a test class
        public class MyClass {
            @isTest //annotation to let apex know this is a test method
            public static void myTest(){
                // Keep in mind the method should always be static and the return type should be void.
                // Only public and global access specifiers should be used 
                // code block
            }
        }

## assert Methods

    These methods are used to prove that our code is working as expected or behaving properly.
    There are many type which are as follows:
        1. Assert
            System.assert(a==b); 
        2. Assert with message
            System.assert(a==b, 'message here');
        3. AssertEquals
            // expected value , value getting from code
            System.assertEquals(a,b);
        4. AssertEquals with message
            System.assertEquals(a,b,'your message here');
        5. AsserNotEquals
            // expected value , value not getting from code
            System.assertNotEquals(a,b);
        6. AsserNotEquals with message
            // expected value , value getting from code
            System.assertNotEquals(a,b,'your message');

## Future reference

    here are following things which should be investigated and read further to dive deeper in testing for apex.
        1. Test Setup Method
        2. Test.startTest() method
        3. Test.stopTest() method
        4. @isTest(seeAllData=false)