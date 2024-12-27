//Fibonacci Series

/* Print first 20 fibonacci numbers

0,1,1,2,3,5,8,.....

0 & 1 - first 2 numbers
1 > 0+1
2 > 1+1
3 > 2+1
5 > 3+2
 */

Integer count= 0;
Integer currentNum = 1;
Integer fibonacciNum = 1;
  while(count<=20){
                Integer tempNum = currentNum;
                currentNum = fibonacciNum;          
                fibonacciNum =tempNum+fibonacciNum;
                System.debug(fibonacciNum);
                count+=1;

            }