Account acc = new Account(Name='WingNut Films',Rating= 'Warm');
insert acc;

Account accRec = [select id from Account where Name ='WingNut Films'];
Opportunity opp = new Opportunity(title='Lord Of The Rings', Stage ='Qualification', ClosedDate = Date.Today(), AccountId=accRec);
insert opp;

accRec.Name = 'New Line Cinema';
update accRec;

Opportunity oppRec = [select id from Opportunity where title ='Lord Of The Rings']
oppRec.Stage = 'Closed-Won';
update OppRec;

delete oppRec;

Opportunity deletedRec = [select id from Opportunity where isDeleted = true and title ='Lord Of The Rings']
undelete deletedRec;