: .n . cr ;
: inc 1 + ;
: abs dup 0 < if -1 * then ;
: odd 2 % abs ;
: even odd not ;
( 42 even . 43 even . 0 even . -1 even . -2 even . — 10101 )
: .s . ." " ;
: .2 dup .s swap dup .s swap ;
: sqr dup * ;




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
( )
: .until ( xn xn-1 ... x3 x2 x1 xn — - )
>r
repeat
dup .s
r@ =
until
cr r> drop ; 
