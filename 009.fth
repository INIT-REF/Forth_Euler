: triplet DUP 2OVER ROT + + SWAP 2SWAP 2DUP + 2SWAP + ROT DROP ;
: dickson 
    DUP 1 DO 
        DUP 2DUP * 2/ DUP I MOD 0 =
        IF 
            I SWAP I / ROT >R triplet DUP 2OVER ROT + + 1000 =
            IF
                * * . R>
            ELSE
                DROP 2DROP R> 
            THEN
        ELSE 
            2DROP 
        THEN 
    LOOP 
    DROP 
;
: euler009 1000 2 DO I dickson 2 +LOOP ;
euler009
CR
bye
