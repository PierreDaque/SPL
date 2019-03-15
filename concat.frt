: concat 
swap dup count >r over count r@ 
+ inc heap-alloc 
dup rot string-copy 
r> over >r + 
swap string-copy r> 
( m" qwerty " m" ytrewq" concat prints )
;
