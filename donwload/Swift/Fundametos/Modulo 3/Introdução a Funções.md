
**O que são funções?**

- Funções permitem agrupar um conjunto de instruções sob um único rótulo, facilitando a execução repetida sem reescrever o código.
- A declaração de uma função é feita com a palavra-chave `func`, seguida pelo nome da função e seu corpo entre chaves.

**Parâmetros e Argumentos**

- Funções podem aceitar valores através de parâmetros, permitindo que diferentes argumentos sejam passados em cada chamada.
- Os parâmetros são definidos na declaração da função e podem ser de diferentes tipos, como `Int`.

**Retorno de Valores**

- Funções podem retornar um único valor, especificando o tipo de retorno, ou múltiplos valores usando tuplas.
- O uso de tuplas permite agrupar valores de diferentes tipos e retorná-los como um único valor composto.


## Tipos de Funções

- Cada função em Swift possui um tipo, incluindo tipos de parâmetros opcionais que permitem passar valores ao chamar a função.
- As funções podem ter um tipo de retorno opcional, permitindo que retornem valores ao chamador.

Definição e Chamada de Funções

- Para definir uma função, é necessário especificar o nome, o tipo de retorno e os tipos e nomes dos parâmetros.
- As funções são chamadas pelo nome seguido de parênteses, que podem incluir uma lista opcional de parâmetros.

Exemplos Práticos

- Um exemplo simples de função é `showPhi`, que não recebe parâmetros e não retorna valores, utilizando o tipo de retorno `Void`.
- Outro exemplo é a função `double`, que recebe um parâmetro e retorna um valor, demonstrando como passar e manipular argumentos.

Parâmetros In-out

- Parâmetros são constantes por padrão, mas podem ser modificados usando parâmetros in-out, que permitem alterar o valor do argumento passado

- - - - - - - - -- - - - - - - - - - 

# Exemplos de funções

- As funções são blocos de código que podem ser executados a partir de outras partes do código.
    
- Cada função executa uma tarefa específica.
    
- As funções permitem que o senhor reutilize o código.
    

Nesta leitura, o senhor explorará exemplos de funções. O senhor refletirá sobre o que elas são, por que são usadas e, o mais importante, explorará como usá-las em seu código.

# **Tipos de funções**

O senhor aprendeu que cada função no Swift tem um tipo:

- **Tipos de parâmetros opcionais:** Esses parâmetros permitem que o senhor passe um ou mais valores para a função quando chamada.
    

- **Tipo de retorno opcional:** Permite que a função retorne um ou mais valores para o chamador.
    

# **Chamada de funções**

O senhor também aprendeu que todas as funções têm um nome. Para chamar uma função, o senhor executa seu nome seguido de um par de parênteses. Os parênteses contêm uma lista opcional de parâmetros.

Por exemplo, "print()" é uma função declarada na biblioteca Swift: print("Hello World")

# **Definição de uma função**

Para definir uma função, o senhor precisa informar três coisas ao compilador:

- O nome da função
    
- O tipo de dados do(s) valor(es) retornado(s)
    
- O(s) tipo(s) de dados e os nomes de quaisquer parâmetros (argumentos)
    

Após a definição dos itens acima, a função pode ser chamada.

Além disso, uma função tem o seguinte layout:

``` Swift

func functionName(arguments) -> ReturnType {
     Execute some code
     return ReturnType
}
```


# **Uma função simples na prática**

A seguir, vamos analisar um exemplo de definição de uma função simples.

Abaixo está uma função simples chamada showPhi. Ela não recebe nenhum parâmetro e não retorna nenhum valor.

Quando uma função não retorna nada, o tipo de retorno é Void. Void também é um alias para (). O senhor pode usar os dois de forma intercambiável. Normalmente, uma função que não retorna nada não escreveria explicitamente Void ou () como o tipo de retorno. No entanto, é útil saber que o tipo de retorno Void é implícito quando o tipo de retorno de uma função explícita não está presente.

``` Swift
func showPhi() {
   print("The value of phi is (√5 + 1) ÷ 2")
}
```
Agora o senhor pode chamar essa função de outro lugar da seguinte forma:

showPhi()

A seguir, o senhor analisará um exemplo de uma função que passa um argumento.

# **Passagem de parâmetros**

O argumento é uma variável local que conterá os dados passados. Observe que o tipo de argumento deve ser declarado.

``` Swift
func double(passedValue: Int) { 
  let result = passedValue * 2
    print("Double \(passedValue) is \(result)")
}
```

Agora, essa função pode ser chamada de outro lugar, assim:

double(passedValue: 10)

# **Passagem de vários parâmetros**.

O senhor pode passar vários parâmetros para uma função. Sua função também pode retornar um valor.

Para retornar um valor, especifique o tipo de retorno esperado da função. A palavra-chave return é usada para retornar o valor final. Return também é o último comando que a função executará.

O exemplo a seguir multiplica dois números e retorna o resultado:

``` Swift
func multiply(firstValue: Int, secondValue: Int) -> Int {
  let result = firstValue * secondValue
  return result
}
```
Essa função agora pode ser chamada de outro lugar, assim:

let result = multiply(firstValue: 10, secondValue: 3)

# **Parâmetros de entrada e saída**

Os parâmetros da função são constantes. O compilador não permitirá que o senhor modifique os parâmetros dentro do corpo da função. Para modificar o valor de um parâmetro e manter a alteração, o senhor usa um parâmetro in-out. O senhor declara um parâmetro in-out com a palavra-chave inout antes do tipo do parâmetro.

Aqui está um exemplo:
``` Swift
func increment(number: inout Int) {
number += 1
}
```

O senhor pode passar uma variável para uma função como esta:

```Swift
var number = 0
increment(number: &number)
```


Ao passar uma variável como argumento para um parâmetro in-out, o senhor coloca um E comercial (&) antes de passar o nome da variável.


---
## NA PRÁTICA:

``` Swift

var goldBars = 0
 
func unlockTreasureChest(inventory: Int) -> Int  {
   ///Retorno Explicito
		return inventory + 100
   /// Retorno Implicito
		// inventory + 100
}

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
```
## SAIDA NO CONSOLE:

```Swift
110
200
300
```

***Em seguida, analise o detalhamento das etapas individuais abaixo.***
## **Etapa 1: Declarar uma variável**

Declarar uma variável para manter o controle do valor da barra de ouro.
```Swift
var goldBars = 0
```
## **Etapa 2: Definir uma função**

Definir uma função chamada unlockTreasureChest.
```Swift
func unlockTreasureChest() {
}
```
## **Etapa 3: Definir o tipo de retorno**

Definir o tipo de retorno da assinatura da função como Int.
```Swift
func unlockTreasureChest() -> Int {
}
```
## **Etapa 4: adicionar um parâmetro**

Adicionar um parâmetro chamado inventory do tipo Int à assinatura da função.
```Swift
func unlockTreasureChest(inventory: Int) -> Int {
}
```
## **Etapa 5: Atualizar o corpo**

Retornar inventory mais 100 no corpo da função.
```Swift
func unlockTreasureChest(inventory: Int) -> Int {
  return inventory + 100
}
```

## **Etapa 6: Retornar uma expressão implicitamente**

Converter a instrução de retorno da função em uma expressão.
```Swift
func unlockTreasureChest(inventory: Int) -> Int {
  inventory + 100
}
```

## **Etapa 7: Chamar a função**

Usando a função para destravar três baús de tesouro.
```Swift 
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
```