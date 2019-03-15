: .n . cr ; 
: inc 1 + ; 
: abs dup 0 < if -1 * then ; 
: odd 2 % abs ; 
: even odd not ; 
( 42 even . 43 even . 0 even . -1 even . -2 even . — 10101 ) 
: .s . ." " ; 
: .2 dup .s swap dup .s swap ; 
: sqr dup * ; 

: dec 1 - ; 

: concat 
swap dup count >r over count r@ 
+ inc heap-alloc 
dup rot string-copy 
r> over >r + 
swap string-copy r> 
( m" qwerty " m" ytrewq" concat prints )
;
