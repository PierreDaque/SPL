: prime ( number )
  dup 0 < if ." Incorrect argument " else
  ( by definition )
  dup 2 < if drop 0 else
    ( for does not work, so I have to use do-loop )
    ( which does an iteration and 2 becames not prime )
    dup 2 = if drop 1 else
        dup
        ( calculates limit for the loop )
        ( number / 2 + 1 )
        dup 2 / 1 +
        ( current index for the loop )
        2 do
            ( copies current index and checks the remainder )
            r@ % 0
            = if 
                ( drops the n and pushes the answer )
                drop 0
                ( drops current index )
                r> drop 
                ( and pushes the limit as the index )
                r@ >r
            else dup then 
        loop 
        ( if answer is not false then push true )
        0 = if 0 else drop 1 then
        then 
    then
then

( 12 prime -- answer 0 )
(  5 prime -- answer 1 )
(   0 means is not prime, 1 means is prime )
;

: primeallot ( number )
    prime cell% allot swap over !

( 4 primeallot -- . -- 6833032 -- 6833032 c@ -- 0 )
(  0 meeans is not prime )

( 5 primeallot -- . -- 6833040 -- 6833040 c@ -- 1 )
(  1 means is prime  )
;
