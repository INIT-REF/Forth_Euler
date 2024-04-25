CREATE primes 115000 CHARS ALLOT
primes 115000 1 FILL
: noprime 0 SWAP primes + C! ;
: sieve 339 2 DO primes I + C@ 1 = IF 115000 I I * DO I noprime J +LOOP THEN LOOP ;
: euler007 sieve 0 115000 2 DO primes I + C@ 1 = IF 1+ DUP 10001 = IF I . CR LEAVE THEN THEN LOOP ;
euler007
bye
