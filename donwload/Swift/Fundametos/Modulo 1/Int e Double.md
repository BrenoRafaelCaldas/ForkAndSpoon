## Operadores matemáticos

- ( + ) Somar
- ( - ) Subtrair
- ( * ) Multiplicar
- ( / ) Dividir

## Operadores de atribuição compostos

- ( += ) Somar
- ( -= ) Subtrair
- ( *= ) Multiplicar
- ( /= ) Dividir

```swift
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("A pontuação do jogo é \\(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \\(levelBonusScore).")

gameScore += Int(levelBonusScore)
print("A pontuação final do jogo é \\(gameScore)")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
print(" A pontuação media é \\(levelScoreDifference).")

let averageLevelScore = Double(levelScoreDifference) / Double(levels)
print("A pontuação média do nível é \\(averageLevelScore)")

```

### SAIDA NO CONSOLE ⬇️

```swift
// A pontuação do jogo é 10
// The level's bonus score is 20.0.
// A pontuação final do jogo é 30
// A pontuação media é 49.
// A pontuação média do nível é 4.9
```

> **Dica:** Lembre-se de usar a barra invertida com a variável **gameScore** entre parênteses na instrução de impressão. Isso é chamado de "interpolação de string".

> Crie uma variável que armazene a pontuação de bônus do nível atual: Chame-a de **levelBonusScore** e defina seu valor inicial como **10.0**.

> **Dica:** Lembre-se de que esse tipo de valor é chamado de valor **de ponto flutuante**.

> Agora o você deve ter uma linha de código que diz: **gameScore += Int(levelBonusScore)**

> **Dica:** esse método de alterar o tipo é chamado de "**type casting**".


> [!NOTE]
>  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators 