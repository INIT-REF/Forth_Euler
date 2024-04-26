: triplet >R >R DUP DUP R@ + SWAP R> + R@ + ROT R> + DUP 2OVER ROT ; 
: dickson DUP 1 DO 
    DUP 2DUP * 2/ DUP I MOD 0 = 
    IF 
        I SWAP I / triplet + + 1000 = 
        IF 
            * * . CR LEAVE 
        ELSE 
            DROP 2DROP 
        THEN 
    ELSE 
        2DROP 
    THEN 
LOOP DROP ;
: euler009 1000 2 DO I dickson 2 +LOOP ;
euler009
bye
