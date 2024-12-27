// Fizzbuzz Problem

/* Print all numbers from 0 to 100 but if a number is divisible by 3 print fizz.
if a number is divisible by 5 print buzz and if a number is divisible by both then print fizzbuzz */

Integer count =1;

do {
    Integer divisibleByThree = Math.mod(count,3);
    Integer divisibleByFive =Math.mod(count,5);
    if (divisibleByThree==0 && divisibleByFive==0){
        system.debug('FizzBuzz');
    }
    else if (divisibleByThree==0 && divisibleByFive!=0){
        System.debug('Fizz');
    }
    else if (divisibleByThree!=0 && divisibleByFive==0){
        System.debug('Buzz');
    }
    else{
        System.debug(count);
    }
    
    count+=1;
} while (count<=100);