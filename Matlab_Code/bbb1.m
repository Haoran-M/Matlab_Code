B1 = [-1 -1 3 2 5 1; 1 1 1 1 4 0; 2 2 -1 0 1 -1; 4 1 2 3 11 2; 1 1 0 -1 3 1]

rref(B1)
% B1_1= {w1,w2,w3,w4}
B1_1 = [-1 -1 3 2; 
    1 1 1 1; 
    2 2 -1 0;
    4 1 2 3; 
    1 1 0 -1]


 % B1_2 ={w5,w6}
 B1_2 = [5 1; 
     4 0;
     1 -1; 
     11 2; 
     3 1]

 rref(B1_2)


 w5=[4 1 2 3 11 2]