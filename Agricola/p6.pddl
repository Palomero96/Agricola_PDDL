(define (problem p1) ;Problema para comprobar el primer cambio de fase
(:domain Agricola)
(:objects ampliacionGranja lugarEncuentro semillasCereales bosque labranza mina juncal jornalero pesca adquisicionMayor reformarCasa mercadoPorcino mercadoBovino cultivo reformasGranja mercadoOvino familiaPlanificada familiaPrecipitada semillasHortalizas canteraOriental vallado canteraOccidental siembra - accion
madera adobe junco piedra cereal hortaliza comida - recurso
oveja cerdo vaca - animal
one two three four five six seven eight nine ten eleven twelve thirteen fourteen - counter)
(:INIT
  (nextFase one two)(nextFase two three)
  (actualRonda one)
  (actualFase one)
  (nextRonda one two)
  (nextRonda two three)
  (nextRonda three four)
  (nextRonda four five)
  (nextRonda five six)
  (nextRonda six seven)
  (nextRonda seven eight)
  (nextRonda eight nine)
  (nextRonda nine ten)
  (nextRonda ten eleven)
  (nextRonda eleven twelve)
  (nextRonda twelve thirteen)
  (nextRonda thirteen fourteen)
  (nextRonda fourteen fifteen)
  (maxRonda five)
  (maxFase one three)
  (maxFase two three)
  (maxFase three three)
  (maxFase four three)
  (maxFase five three)
  (maxFase six three)
  (maxFase seven three)
  (maxFase eight three)
  (maxFase nine three)
  (maxFase ten three)
  (maxFase eleven three)
  (maxFase twelve three)
  (maxFase thirteen three)
  (maxFase fourteen three)
  ;Predicados turnos
  (cambioTurno jugadorUno jugadorDos)
  (cambioTurno jugadorDos jugadorUno)
  (turno jugadorUno)
  ;Inicializamos los valores de las acciones
  (= (acumulado bosque) 0)
  (= (acumulado mina) 0)
  (= (acumulado juncal) 0)
  (= (acumulado pesca) 0)
  (= (acumulado mercadoBovino) 0)
  (= (acumulado mercadoOvino) 0)
  (= (acumulado mercadoPorcino) 0)
  (= (acumulado canteraOccidental) 0)
  (= (acumulado canteraOriental) 0)
  (= (acumulado jornalero) 0)
  (= (acumulado semillasCereales) 0)
  (= (acumulado semillasHortalizas) 0)
  ;Acciones disponibles desde el principio
  (disponible bosque)
  (disponible ampliacionGranja)
  (disponible semillasCereales)
  (disponible lugarEncuentro)
  (disponible labranza)
  (disponible mina)
  (disponible jornalero)
  (disponible juncal)
  (disponible pesca)

  ;Predicados auxiliares para saber que recursos da cada
  (recursoAccion madera bosque)
  (recursoAccion adobe mina)
  (recursoAccion comida pesca)
  (recursoAccion comida jornalero)
  (recursoAccion junco juncal)
  (recursoAccion piedra canteraOccidental)
  (recursoAccion piedra canteraOriental)
  (recursoAccion cereal semillasCereales)
  (recursoAccion hortaliza semillasHortalizas)

  ;Predicados auxiliares para saber que animales da cada
  (animalAccion oveja mercadoOvino)
  (animalAccion cerdo mercadoPorcino)
  (animalAccion vaca mercadoBovino)

  ;Predicados de almacenes de los jugadores
  (= (almacenRecursoJug madera jugadorUno) 8)
  (= (almacenRecursoJug junco jugadorUno) 0)
  (= (almacenRecursoJug adobe jugadorUno) 0)
  (= (almacenRecursoJug piedra jugadorUno) 0)
  (= (almacenRecursoJug cereal jugadorUno) 0)
  (= (almacenRecursoJug hortaliza jugadorUno) 0)
  (= (almacenRecursoJug comida jugadorUno) 0)
  (= (almacenRecursoJug madera jugadorDos) 0)
  (= (almacenRecursoJug junco jugadorDos) 0)
  (= (almacenRecursoJug adobe jugadorDos) 0)
  (= (almacenRecursoJug piedra jugadorDos) 0)
  (= (almacenRecursoJug cereal jugadorDos) 0)
  (= (almacenRecursoJug hortaliza jugadorDos) 0)
  (= (almacenRecursoJug comida jugadorDos) 0)

  ;Predicados de almacenes de animales de los jugadores
  (= (almacenAnimalJug oveja jugadorUno) 0)
  (= (almacenAnimalJug cerdo jugadorUno) 0)
  (= (almacenAnimalJug vaca jugadorUno) 0)
  (= (almacenAnimalJug oveja jugadorDos) 0)
  (= (almacenAnimalJug cerdo jugadorDos) 0)
  (= (almacenAnimalJug vaca jugadorDos) 0)

  ;Predicados de habitantes para los jugadores
  (= (habitantes jugadorUno) 1)
  (= (habitantes jugadorDos) 2)
  (= (habrestantes jugadorUno) 1)
  (= (habrestantes jugadorDos) 2)

  ;Predicados de espacios de los jugadores
  (= (espaciosTotales jugadorUno) 15)
  (= (espaciosTotales jugadorDos) 15)
  (= (espaciosRestantes jugadorUno) 15)
  (= (espaciosRestantes jugadorDos) 15)
  (= (espaciosSiembra jugadorUno) 0)
  (= (espaciosSiembra jugadorDos) 0)
  (= (espaciosAnimales jugadorUno) 0)
  (= (espaciosAnimales jugadorDos) 0)

  ;Predicados para los costes de jugadores y costeTotal
  (= (costeTotal) 0)
  (= (costeJug jugadorUno) 0)
  (= (costeJug jugadorDos) 0)
  ;Predicados de las acciones que se van a desbloquear
  (desbloquear vallado one)
  (desbloquear mercadoOvino two)
  (desbloquear adquisicionMayor three)
  (desbloquear siembra four)
  (desbloquear reformarCasa five)
  (desbloquear familiaPlanificada six)
  (desbloquear canteraOccidental seven)
  (desbloquear mercadoPorcino eight)
  (desbloquear semillasHortalizas nine)
  (desbloquear mercadoBovino ten)
  (desbloquear canteraOriental eleven)
  (desbloquear cultivo twelve)
  (desbloquear familiaPrecipitada thirteen)
  (desbloquear reformasGranja fourteen)

  (habilitar)
)
(:goal
  (fin)
)
(:metric minimize (costeTotal))

)
