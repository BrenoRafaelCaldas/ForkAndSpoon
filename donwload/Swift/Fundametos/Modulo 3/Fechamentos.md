 **Definição de Closures**

- Closures são blocos de funcionalidade que podem ser armazenados em variáveis e passados como argumentos de função.
- Semelhantes a funções, mas não possuem nome, o que as torna anônimas. Por exemplo, um closure pode ser definido assim:
    ```Swift
    let myClosure = {
        print("My First closure")
    }
	```

**Uso de Closures**

- Permitem a encapsulação de dados, mantendo a implementação do código oculta. Isso facilita a criação de código mais limpo e organizado.
- Exemplo de um closure que aceita um argumento e imprime seu valor:
    ```Swift
    let greetingClosure = { (name: String) in
        print("Hello, \(name)!")
    }
    greetingClosure("Grace")
	 // Saída: Olá, Maria!
    ```

**Exemplos Práticos**

- Um closure pode ser criado para retornar o valor máximo entre dois números usando um operador ternário:
    ```Swift
    let maxClosure = { (num1: Int, num2: Int) -> Int in
        return num1 > num2 ? num1 : num2
    }
    let maxValue = maxClosure(5, 10) 
    // maxValue será 10
    ```
- Closures podem ser passadas como parâmetros para funções, como a função `sorted`, que utiliza closures para determinar a ordem de classificação de um array:
    ```Swift
    let numbers = [5, 3, 8, 1]
    let sortedNumbers = numbers.sorted { $0 < $1 } 
    // Resultado: [1, 3, 5, 8]
    ```


---
# **Comparação entre funções e closures**

Uma função, como vimos anteriormente, tem o seguinte layout:
```Swift
func functionName(argument list)  ->  Return Type
{
    Execute some code
}
```

Uma closure tem o seguinte layout:
```Swift
{( argument list) -> ReturnType in
    Execute some code
}
```

# **Declarando uma closures**

Aqui está uma closure muito simples que será armazenada em uma variável, que não recebe argumentos ou não retorna nenhum valor
```Swift
var aClosure = {
  () -> Void i
  print("This is a closure")
}
```
Agora o senhor pode executar essa closure da seguinte forma:
```sWIFT
aClosure()
```

# **Passando um argumento para uma closure**

Aqui está uma closure que recebe um argumento, mas não retorna nenhum valor.
```Swift
var argumentClosure = {
  (str: String) -> Void in
  print("Hello \(str)")
}
```
Agora, o senhor pode executar essa closure da seguinte forma:

==argumentClosure("Bertram")==

# **Passando um argumento e retornando um valor para uma closure**

Aqui está uma closure que recebe um argumento e retorna um valor.
```Swift
var maximum = {
  (num1: Int, num2: Int) -> Int in
  return num1 > num2 ? num1 : num2
}
```
Agora, o senhor pode executar essa closure da seguinte forma:

==maximum(1, 6)==

# **Capturando um valor em uma closure**

As closures e, portanto, as funções (pois são uma forma de closure) capturam valores que existem no escopo quando são criadas.

Se forem retornados, eles terão sua própria cópia de qualquer variável ou constante declarada.
```Swift
func  updateValue() -> () -> Void {
      let capturedValue = 10
      return { print(capturedValue) }
  // Returns a closure holding capturedValue
}
```
Agora o senhor pode capturar a closure chamando a função e armazenando o valor em uma constante chamada captureClosure.
```Swift
let captureClosure = updateValue()
```
Agora, o senhor pode executar essa closure capturada da seguinte forma:

==captureClosure()==

Quando essa closure for executada, ela imprimirá 10, embora ==capturedValue== não exista mais.

# **Passagem de uma closure como argumento de função**

O senhor pode passar closures como parâmetros de função da mesma forma que poderia passar uma função como parâmetro de função.

Um bom exemplo é a função built-in sorted. Ela recebe uma matriz, classifica-a e retorna a matriz classificada como uma nova coleção.

A função sorted recebe dois argumentos:

1. Uma matriz de valores de um tipo conhecido
    
2. Um fechamento ou função que recebe dois argumentos do mesmo tipo que o conteúdo da matriz
    
    1. Retorna um valor Bool que indica se o primeiro valor deve aparecer antes ou depois do segundo valor quando os valores forem classificados
        
        a. true: se o primeiro valor deve aparecer antes do segundo valor
            
        b. false: caso contrário
        
```Swift
let letters = ["H" , "E" , "X" , "A"]

let myCollection = letters.sorted(by: { (string1: String, string2: String) -> Bool in return string1 < string2 } )

// returns ["A" , "E" , "H" , "X"]
```



---

### O bloco de código abaixo descreve o resultado do exercício em sua totalidade.
```Swift
var goldBars = 0

let unlockTreasureChest = { (inventory: inout Int) in
  inventory += 100
}

unlockTreasureChest(&goldBars)
print(goldBars)
```

SAÍDA NO CONSOLE:
```swift
100
```

*Em seguida, analise o detalhamento das etapas individuais abaixo.*

## **Etapa 1: Declarar uma variável**

Declarar uma variável chamada goldBars.
```Swift
var goldBars = 0
```
## **Etapa 2: Declarar uma constante**

Declarar uma constante chamada unlockTreasureChest.
```swift
let unlockTreasureChest
```
## **Etapa 3: Definir a constante como uma closure**

Definir a constante igual a uma closure com:

- Um parâmetro chamado inventory do tipo Int.
    
- Um tipo de retorno Int.
    
- Uma expressão de inventory mais 100 no corpo.
```Swift
let unlockTreasureChest = { (inventory: Int) -> Int in
  inventory + 100
}
```
## **Etapa 4: Refatorar a closure**

Definir a constante igual a uma closure com:

- Um parâmetro de entrada e saída chamado inventory do tipo Int.
    
- Um tipo de retorno Void.
    
- Um corpo que consiste em inventory igual a si mesmo mais 100.
```Swift
let unlockTreasureChest = { (inventory: inout Int) in
inventory += 100
}
```
## **Etapa 5: usar a closure**

Chamar a closure ao passar goldBars para o parâmetro inventory.
```swift
unlockTreasureChest(&goldBars)
```
## **Etapa 6: Imprimir a variável**

Imprimir goldBars.
``` swift
print(goldBars) 
```