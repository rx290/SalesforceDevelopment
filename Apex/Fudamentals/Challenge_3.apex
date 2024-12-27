// Find leap year

/*
A leap year has 366 days, write a program to find out if a year is a leap year or not.

Conditions:
1. A year is a leap year, if it is evenly divisible by 4.
2. Except if that is year is also evenly divisible by 100.
3. Unless the year is also evenly divisible by 400.
 
 
 Example 1:

 2000 is a leap year!
 Why?
 Evenly divisible by 4 = leap
 Evenly divisible by 100 = Not Leap
 Evenly divisible by 400 = Leap
 
 2200 is a leap year!
 Why?
 Evenly divisible by 4 = leap
 Evenly divisible by 100 = Not Leap
 Not divisible by 400 = Leap
 
 */

Integer year = 2004;
Integer divisibleByFour = Math.mod(year,4); 
Integer divisibleByHundered = Math.mod(year,100);
Integer divisibleByFourHundered = Math.mod(year,400);
Integer isLeapYear = 0;
if ((divisibleByFour == 0 && divisibleByHundered != 0) || (divisibleByFour == 0 && divisibleByHundered != 0 && divisibleByFourHundered == 0)){
    isLeapYear = 1;
} else{
    isLeapYear = 0;
}
 switch on isLeapYear{
     		
            when 1{
                System.debug(year + ' is a leap year!');
            }
             when 0{
                 System.debug(year + ' is not a leap year!');
             } 
                        
             when else{
                 System.debug('System Error');
            }
        }