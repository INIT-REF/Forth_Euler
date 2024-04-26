: ndivs 1 SWAP 
    DUP 2 MOD 0 = 
    IF 
        1 SWAP 
        BEGIN 
            2/ SWAP 1+ SWAP 
            DUP 2 MOD 0 > 
        UNTIL 
        SWAP ROT * SWAP
    THEN 
    DUP 1 >
    IF 
        DUP 1+ 3
        DO
            DUP I MOD 0 =  
            IF 
                1 SWAP 
                BEGIN
                    I / SWAP 1+ SWAP
                    DUP I MOD 0 >
                UNTIL
                SWAP ROT * SWAP
            THEN
            DUP 1 = 
            IF LEAVE THEN 
        2 +LOOP 
    THEN
DROP ;

: euler012 1 1 BEGIN SWAP 1+ DUP ROT + DUP ndivs 500 > UNTIL . CR ;

euler012
bye 
