// Governor Limits Challenge

/*
Create a new picklist field "Profile" on Opportunity Object. This field should have following values:
- High
- Medium
- Low

Write a function that can take a list of opportunity record ids, the function performs following tasks:
    1. Query these created records
    2. If the record has amount below 10k then update profile to Low
    3. if the record has amount over 10k and under 50k then update the profile to Medium
    4. if the amount is greater than 50K then update profile to high.
     
*/