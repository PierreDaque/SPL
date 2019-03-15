# SPL
Вариант на вторую часть задания 
( m" farzekaev" string-hash 3 % . -- 0 )

collatz.frt
пример тестирования
( 5 collatz .until -- 1248165 )
(10 collatz .until -- 124816510 )

concat.frt
пример тестирования
( m" qwerty " m" ytrewq" concat prints -- qwerty ytrewq )

prime.frt
пример тестирования
( 12 prime --  0 )
(  5 prime --  1 )
(  0 means is not prime, 1 means is prime )

пример тестирования c allot 
( 4 primeallot -- . -- 6833032 -- 6833032 c@ -- 0 )
( 0 meeans is not prime )

( 5 primeallot -- . -- 6833040 -- 6833040 c@ -- 1 )
( 1 means is prime )

parity.frt
пример тестирования
( 5 parity -- 1 )
( 1 means is parity )

( 12 parity -- 0 )
(  0 means is not parity )
