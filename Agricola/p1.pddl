(define (problem p1) ;Problema para comprobar el primer cambio de fase
(:domain Agricola)
(:objects arar - accion)
(:INIT
  (nextFase one two)(nextFase two three)(nextFase three four)
  (desbloquear arar one)
  (nextRonda one two)
  (maxRonda two)
  (maxFase three one)
  (actualRonda one)
  (actualFase one)
  (reponer bosque)
  (= (almacenRecursoJug madera jugadorUno) 0)
  (= (almacenRecursoJug madera jugadorDos) 0)
)
(:goal
  (fin)
)
)
