// BMI Calculator Method

/* Create a method with name of calculateBMI which accepts necessary parameter and returns bmi value. 


BMI Formula: body weight in kg/ (body height in meter)^2
*/

// Pace Calculator Method

/* Create a method with name of calculatePace which accepts necessary parameter and returns km per hour. 


Pace Formula: distance in km/ time in minutes
*/


public class Fitness{

    public decimal calculateBMI(decimal weight, decimal height){
        decimal bmi = weight / math.pow((double)height,2);
        return bmi;      
    }

    public double calculatePace(decimal distance, decimal minutes){
        decimal minuteToHours = minutes/60;
        decimal pace = distance/minuteToHours;
        return pace;

    }
}

//anonymous window code:
Fitness pal = new Fitness();

double bmi = pal.calculateBMI(100.5,1.82);
system.debug('Your BMI is: '+bmi);
double pace = pal.calculatePace(7.3,9.2);
system.debug('Your Pace is: '+pace);
