import UIKit

// Assignemnt
/*
    =
 */

var var1 = 10
var1 = 10 + 20

var var2 = var1

// Arithmetic

/*
    +
    -
    *
    /
    %
 */

var res = var1 % 4


// Compound Assignment
/*
    +=
    -=
    *=
    /=
    %=
 */

res %= var1  // res = res + var1
print(res)

// Comparision
/*
    ==
    !=
    <
    >
    <=
    >=
 */

var result = var1 <= var2

// Logical
/*
    &&
    ||
    !
 
    p   q   &&  ||  !p
    t   t   t   t   f
    t   f   f   t   f
    f   t   f   t   t
    f   f   f   f   t
 */

result = !(var1 == 30 || var2 == var1)

// Ternarry

res = var1 == 20 ? 100 : 200

print(res)

// Increment / Decrement
res += 1
res -= 1
