: inc 1 + ;
: .s . ." " ;

: collatz ( xn — xn xn-1 ... x3 x2 x1 xn )
dup >r
repeat
dup 1 > if
dup 2 % if
dup 3 * inc
else dup 2 / then
else 1 then
dup 1 = until
r> ;

: .until ( xn xn-1 ... x3 x2 x1 xn — - )
>r
repeat
dup .s
r@ =
until
cr r> drop ; 
