@isTest
public class Covid19Test{
    @isTest
    public static void treatPatientTest(){
        // create the instance of the class
        Covid19 Lahore = new Covid19(10);

        integer treatedLhr = Lahore.getTreated();
        // check if the count is 10 or not
        System.assertEquals(10,treatedLhr, 'Treated count does not match');

        // create the instance of the class
        Covid19 Karachi = new Covid19(15);

        integer treatedKhi = Karachi.getTreated();
        // check if the count is 10 or not
        System.assertEquals(15,treatedKhi, 'Treated count does not match');

        //check the count of recoveredInCountry, it should be 25
        System.assertEquals(25,Covid19.recoveredInCountry,'Treated count does not match');
    }
}