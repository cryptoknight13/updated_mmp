(define (domain domaingotocity)
(:requirements :typing)
(:types city - object)
(:predicates 
    (at ?x - city)
    (has_taxi ?x ?y - city)
    (has_bus ?x ?y - city)
    (neighboring ?x ?y - city)
)
  
(:action go2
:parameters (?from ?to - city)
:precondition
(and
( at ?from )
( has_bus ?from ?to )

)
:effect
(and
( at ?to )
(not ( at ?from ))
)
)

(:action go
:parameters (?from ?to - city)
:precondition
(and
( has_taxi ?from ?to )
( at ?from )

)
:effect
(and
( at ?to )
(not ( at ?from ))
)
)



)
