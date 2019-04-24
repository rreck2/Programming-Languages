(define min-split (lambda (l s1 total)
    (if (null? l)
        
        (abs (- (- total s1) s1)) 
        
        (let
            (
                (x (min-split (cdr l) (+ s1 (car l)) (+ total (car l))) )
                (y (min-split (cdr l) s1 (+ total (car l))) )
            )
            (if ( < x y) x y)
        )
    )
))
