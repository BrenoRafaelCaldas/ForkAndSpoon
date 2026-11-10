
# **Tipos de Loops**

- **For in loops**: Executam um bloco de código um número específico de vezes, útil quando o número de iterações é conhecido.
- **While e repeat while loops**: Executam um bloco de código enquanto uma condição é verdadeira.

**Exemplos Práticos de Loops**

- Um exemplo de **for in loop** é o jogo de dados, onde o loop itera sobre um intervalo de 1 a 6 para simular lançamentos.
- Um exemplo de **while loop** é usado para continuar gerando números aleatórios até que dois dados sejam iguais.
- O **repeat while loop** é apresentado como uma alternativa que garante que o código dentro do loop seja executado pelo menos uma vez antes de verificar a condição.

# Uma olhada nos loops na prática

Para começar, vamos explorar os **loops for in**, pois eles são mais simples de implementar do que os **loops while** e **repeat while**.

Suponha que o você esteja criando um jogo de dados em que a lógica do jogo usa um **loop for in** para implementar as jogadas de dados. O senhor pode criar um loop for in que itera sobre um intervalo.

```swift
for in in 1...6 {
 Print("Roll a \\(dice).")
}
```

O loop **for in** usa um intervalo fechado para lançar todos os números de dados em uma linha. Ele se repete seis vezes e imprime um número diferente entre 1 e 6 a cada vez.

Quando o objetivo do jogo é rolar duplas, o senhor pode usar um loop while para implementar isso.

```swift
var firstDice = Int.random(in: 1...6)
var secundDice = Int.random(in: 1...6)
while firstDice != secundDice {
    print("You rolled a double \\(firstDice).")
    // Tive que add o break pois o looping estava infinto kkk
	  break
}
```

O método **random(in:)** gera um número aleatório entre o limite inferior e o limite superior de um determinado intervalo de números inteiros. O senhor chama o método como **Int.random(in:)** em seu código porque precisa especificar o tipo de dados com o qual o método trabalha, que, nesse caso, é Int.

Primeiro, o senhor usa o método **random(in:)** do tipo Int para gerar números aleatórios entre 1 e 6 para as variáveis **firstDice** e **secondDice**. Em seguida, o loop while verifica se os números gerados anteriormente são diferentes e gera novos números aleatórios para ambas as variáveis até que seus valores sejam iguais

O código que lança os dados é repetido duas vezes nesse caso: uma vez antes do loop while e uma vez dentro do próprio loop. Isso acontece porque o loop while primeiro verifica se sua condição é verdadeira e só então executa qualquer iteração

O senhor pode corrigir isso implementando a lógica do jogo com um loop while repetido

```swift
var firstDice = 0
var secondDice = 0
repeat {
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
} while firstDice != secondDice
print("You rolled a double \\(firstDice).")
```

Primeiro, o senhor define as variáveis **firstDice** e **secondDice** como 0 desta vez. Em seguida, o loop repeat while gera valores de dados aleatórios como antes, até que se tornem iguais. Sua condição é avaliada somente após a primeira iteração, pois dessa vez os dados são lançados somente dentro do loop.

> Os loops repetem as coisas por um certo número de vezes enquanto uma determinada condição é verdadeira. Os **loops for in** sabem o número de iterações antes de serem executados, enquanto os **loops while** e **repeat while** são executados enquanto suas condições forem verdadeiras

# **Este exercício permite que você aplique conceitos de programação em Swift para criar a lógica de um jogo.**

**1. Criar um Loop `for in`**

- Declare um loop `for in` para percorrer todos os níveis do jogo.
- Utilize um intervalo fechado de "1...levels" para iterar sobre os níveis.

**2. Instrução `if` para Nível de Bônus**

- Adicione uma instrução `if` para verificar se o nível atual é um nível de bônus.
- Use `print` para mostrar uma mensagem se for um nível de bônus e utilize `continue` para pular esse nível.

**3. Imprimir o Nível Atual**

- Imprima "Play level..." seguido do número do nível atual no console.

**4. Verificar Níveis Gratuitos**

- Adicione uma instrução `if` para contar quantos níveis gratuitos foram jogados.
- Se todos os níveis gratuitos forem jogados, imprima uma mensagem e use `break` para encerrar o jogo.

Este exercício combina loops, condições e controle de fluxo para implementar a lógica de um jogo simples com múltiplos níveis.

```swift
let levels = 10
let freeLevels = 4
let bonusLevel = 3
for level in 1...levels {
  if level == bonusLevel {
    print("Skip bonus level \\(bonusLevel).")
    continue
  }
  print("Play level \\(level).")
  if level == freeLevels {
    print("You have played all \\(freeLevels) free levels. Buy the game to play the remaining \\(levels - freeLevels) levels.")
    break
  }
}
```

### SAÍDA NO CONSOLE ⬇️

```swift
// Play level 1.
// Play level 2.
// Skip bonus level 3.
// Play level 4.
// You have played all 4 free levels. Buy the game to play the remaining 6 levels.
```

> Consulte o capítulo [Control Flow (Fluxo de controle](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)) do Swift Programming Language Guide (Guia da linguagem de programação Swift) para aprofundar seu conhecimento sobre loops.


> [!Control Flow]
> https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/