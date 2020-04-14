# Parameters
- Zie een beetje als globale variabelen, maar met belangrijke verschillen
- **threadspecifiek**
- **continuationspecifiek**
  - dus enkel binnenin een bepaalde syntactische scope
- `(make-parameter)` produceert een **parameter procedure**
  - kan opgeroepen worden zonder args (produceert de waarde)
  - kan opgeroepen worden met arg (verandert de waarde)
  - wijzigingen kunnen gecheckt worden met een guard

# Geavanceerd
- nieuwe threads zijn geparametriseerd zoals hun ouderthread
- continuations kunnen migreren tussen threads en bewaren hun parametrisatie (effect?)
- veranderen waarde van een parameter **verandert die waarde enkel in de huidige thread**

# TODO: Racket reference, deel 1 grondig lezen om dit uit te spitten
