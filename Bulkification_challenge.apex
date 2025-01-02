// Bulkification Challenge

/*
SFDCFacts Academy uses salesforce platform to run their business. Recently they have introduced a new process to track the average case resolution days
for each of its customer. The IT team has created a new number field "Avg_Case_Resolution_Days__c" on Account Object.

A developer has written a method "updateAvgCaseResolutionDays()" to correctly update this field on Account Object, the team noticed that the current code
does not work for multiple account and can only work for one account at a time.

Your job is to  Bulkify the current method to Handle Multiple Accounts update at Once.

Here is the method:

    public static void updateAvgCaseResolutionDays(Id accountId){
    Integer totalDays = 0, totalCases =0;
    // Retrive all the cases for this account
    // get resolution days for each account (ClosedDate - CreatedDate)
    for (case caseObj : [Select id, createdDate, ClosedDate
                            from case
                            where isClosed = true
                            AND accountId: accountId]){
                            // increase number of cases
                            totalCases++;
                            // get duration in days and add it to totalDays
                            totalDays += caseObj.CreatedDate.date()/daysBetween(caseObj.ClosedDate.date());
                            }
                            Decimal resolutionDays =totalDays/totalCases;
                            // update account object
                            Account acc = new Account(ID = accountId, Avg_Case_Resolution_Days__C = resolutionDays);
                            update acc;
    }
*/