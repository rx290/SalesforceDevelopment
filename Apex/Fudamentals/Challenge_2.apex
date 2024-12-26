//Split the bill

/* Ross, Chandler and joey loves pizza, they went to their favourite restaurant and ordered pizza and ordered a few slices.

Total bill was 53$, however, they were not sure how to split the bill?

Do you think you can help them? 


Pizza rate:

1. Slice - 8$/Slice
2. 2-3 Slice - 7$/Slice
3. > 3 Slice - 6$/Slice


Order:
Ross Ordered - 3 Slices
Chandler ordered - 1 Slice
Joey Ordered - 4 Slices

*/

 
Integer ross_order =3;
Integer xr = ross_order;
Integer Payment_r = (xr>=2 && xr<=3) ? 7: (xr==1) ? 8 : 6;
system.debug('Bill for Ross: '+ Payment_r*ross_order);

Integer chandler_order =1;
Integer xc = chandler_order;
Integer Payment_c = (xc>=2 && xc<=3) ? 7: (xc==1) ? 8 : 6;
system.debug('Chandler for Chandler: '+ Payment_c*chandler_order);

Integer joey_order =4;
Integer xj = joey_order;
Integer Payment_j = (xj>=2 && xj<=3) ? 7: (xj==1) ? 8 : 6;
system.debug('Joey for Joey: '+ Payment_j*joey_order);

integer total = (Payment_r*ross_order) + (Payment_c*chandler_order) + (Payment_j*joey_order);
system.debug('total is: '+total);