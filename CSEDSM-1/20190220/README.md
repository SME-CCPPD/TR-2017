# CSEDSM 1 - Lezione del 20 febbraio 2019

## Argomenti

* Estensione dei filtri FIR alla *z-notation*:
  * `z = e^{iw}`
  * `z^{-1} = e^{-iw}`
  * `Y = [a0 + a1 z^{-1}] X`
    (`X` e `Y` rappresentano qui *l'intero* segnale)
  * `Y = H(z) X`
  * connettendo due filtri in serie: `Y = H(z) [ G(z) X ]`
  * posso usare le proprietà dell'algebra per moltiplicare le caratteristiche
    dei due filtri:
    `Y = (a0 + a1 z^{-1})(b0 + b1 z^{-1} = a0b0 + (a0b1 + b0a1)z^{-1} + a1b1 z^{-2}`
* Il piano `Z`:
  * `H(z) = 1 - a1z^{-1} = (z - a1)/ z` da cui si vede che il polinomio va a
    zero al numeratore quando `z = a1` e va a `0/0` al denominatore quando `z = 0`
  * se sostituisco `z = e^{iw}` mi rendo conto che la funzione è circolare
    (cerchio di raggio 1)
* Filtri FIR di ordine superiore:
  `H(z) = 1 - z^{-1} + z^{-2} = z^{-2} (z^{2} - z + 1)`
  il denominatore ha 2 zeri per `z=0` mentre il numeratore è un polinomio
  quadratico `z^{2} - z + 1`
