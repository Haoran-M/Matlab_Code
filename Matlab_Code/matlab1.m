% following code is for part1 a)
for v = [7 8 9 10 11]
    A = rand(v,v)
    R = rref(A)
end
A = [1 2 2 ; 1 2 1; 1 2 3; 1 2 0]
R=rref(A)

% following code is for part 1 b)

for i = [1 2 3 4]
    for v = [7 8 9]
        A = rand(v+i,v)
        R = rref(A)
    end
end
A = [1 1 1; 2 1 1 ; 3 1 1]
R = rref(A)

% following code is for part 1 c)

for i = [1 2 3 4]
    for v = [7 8 9]
        A = rand(v,v+i)
        R = rref(A)
    end
end
A = [1 2 3 5; 2 3 4 5; 3 4 5 6]
R = rref(A)
% the following code is for part 2
w1 = [-1 1 2 4 1]'
w2 = [-1 1 2 1 1]'
w3 = [3 1 -1 2 0]'
w4 = [2 1 0 3 -1]'
w5 = [5 4 1 11 3]'
w6 = [1 0 -1 2 1]'
B1 = [w1 w2 w3 w4 w5 w6]
rref(B1) % rank(B1)=4
B1_1 = [w1 w2 w3 w4]
v1 = cat(2,B1_1,w5)
v2 = cat(2,B1_1,w6)
rref(v1)
% c1 =
rref(v2) 
z1 = [5 2 1 7 1]'
z2 = [2 -1 0 0 1]'
z3 = [1 2 1 1 0]'
z4 = [2 -4 -2 4 1]'
z5 = [0 1 2 3 -1]'
B2 = [z1 z2 z3 z4 z5]
rref(B2)
B2_2 = [z1 z2 z3 z5]
U = cat(2,B1_1,-B2_2)
rref(U)

