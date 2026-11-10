
**Dicas importantes:** • Evite if isLoggedIn == true; prefira if isLoggedIn • ! inverte o valor lógico • && tem prioridade maior que ||; use parênteses se necessário • Swift faz short-circuit: para de avaliar quando o resultado já é conhecido

|Operador|Nome|Exemplo|Resultado|
|---|---|---|---|
|==|Igualdade|3 == 3|True|
|!=|Diferente|2 != 5|True|
|>|Maior que|10 > 3|True|
|<|Menor que|5 < 2|False|
|>=|Maior ou igual|7 >= 7|True|
|<=|Menor ou igual|4 <= 3|False|
|AND ( && )|E lógico (AND) - verdadeiro se **ambos** jforem verdadeiros|True && False|False|
|OR (||)|Ou (OR) - verdadeiro se **pelo menos uma** for verdadeira|
|NOT ( ! )|Negação (NOT) - inverte o valor|!true|False|

---

```swift
import SwiftUI

let freeApp = true

if freeApp == true {
    print("O senhor está usando a versão gratuita do aplicativo. Compre a versão completa do aplicativo para ter acesso a todos os seus recursos")
}

let morningTemperature = 70
let eviningTemperature = 80

if morningTemperature < eviningTemperature {
    print("A temperatura da manhã é mais fria")
} else {
    print("A temperatura da noite é mais fria")
}

let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fehrenheit" {
    print("O aplicativo está configurado para Fahrenheit")
} else {
    print("O aplicativo está configurado para Graus Celsius")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius" {
    print("O aplicativo está configurado corretamente.")
} else {
    print("O aplicativo não está configurado corretamente.")
}

switch temperatureDegree {
case "Fahrenheit":
    print("O aplicativo está configurado para os EUA.")
case "Celsius":
    print("O aplicativo está configurado para a Europa.")
default:
    print("A configuração do aplicativo é desconhecida.")
}

```

### SAÍDA NO CONSOLE ⬇️

```swift
// O senhor está usando a versão gratuita do aplicativo. Compre a versão completa do aplicativo para ter acesso a todos os seus recursos
// A temperatura da manhã é mais fria
// O aplicativo está configurado para Graus Celsius
// O aplicativo está configurado corretamente.
// O aplicativo está configurado para os EUA.
```

**O que são instruções **Desenvolvimento do Simulador**

- Você trabalhou com funções, loops, estruturas e classes para criar um simulador funcional.
- Estruturas e classes foram utilizadas para configurar as operações do simulador e loops para processar entradas do usuário.

**Conceitos de Programação**

- Implementou declarações condicionais e instruções switch para garantir o funcionamento adequado do simulador.
- O exercício ajudou a consolidar seu entendimento sobre conceitos básicos de programação em Swift.switch?**

- Instruções switch comparam o valor de uma constante ou variável com um conjunto fixo de valores.
- Se houver uma correspondência, o bloco de código associado é executado.

**Vantagens das instruções switch:**

- Mais fáceis de ler e escrever do que as instruções if-else, pois a constante ou variável é mencionada apenas uma vez.
- São exaustivas, obrigando a cobertura de todos os casos possíveis, ao contrário das instruções if-else.

**Exemplo prático:**

- Um exemplo de aplicativo de clima mostra a conversão de uma instrução if-else para uma instrução switch, simplificando o código.
- O caso default lida com valores não declarados, garantindo que a instrução switch seja sempre exaustiva.

**Considerações finais:**

- As instruções switch são uma forma eficaz de escrever código condicional que é mais legível e completo.

A leitura enfatiza a importância das instruções switch para melhorar a clareza e a eficiência do código em Swift.


> [!Tipos de Coleções]
> https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes


> 