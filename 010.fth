CREATE primes 2000000 CHARS ALLOT
primes 2000000 1 FILL
: noprime 0 SWAP primes + C! ;
: sieve 1414 2 DO primes I + C@ 1 = IF 2000000 I I * DO I noprime J +LOOP THEN LOOP ;
: euler010 sieve 0 2000000 2 DO primes I + C@ 1 = IF I + THEN LOOP . CR ;
euler010
bye
