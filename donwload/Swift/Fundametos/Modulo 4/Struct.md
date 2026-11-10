Estruturas em Swift

- Estruturas são tipos de valor que agrupam constantes, variáveis e funções, permitindo a organização do código.
- Ao atribuir uma estrutura a uma variável, o Swift cria uma cópia independente, evitando que alterações em uma instância afetem outra.

Definição e Sintaxe

- Para definir uma estrutura, utiliza-se a palavra-chave `struct`, seguida do nome e de um bloco de código entre chaves que contém propriedades e métodos.
- As propriedades são variáveis e constantes, enquanto os métodos são funções que operam sobre essas propriedades.

Instanciando Estruturas

- Cada estrutura possui um inicializador automático, chamado de "Memberwise Initializer", que permite criar instâncias com valores iniciais.
- É possível criar um inicializador personalizado para definir a ordem dos parâmetros ou fornecer valores padrão, facilitando a criação de instâncias.


Definição de Estruturas

- Estruturas ajudam a agrupar dados relacionados, evitando a fragmentação no código.
- Um exemplo prático é a estrutura de receita, que inclui propriedades como nome, ingredientes e etapas de preparo.

Propriedades e Métodos

- A estrutura de receita possui três propriedades: `name`(nome da receita), `ingredients`(ingredientes como um conjunto) e `steps` (etapas como um array).
- Um método chamado `printDescription` é criado para exibir as informações da receita de maneira clara.

Inicialização de Estruturas

- Para criar uma instância da estrutura, utiliza-se a sintaxe `Recipe(...)` com os parâmetros necessários.
- Um exemplo é a receita de "chocolate cookie", mostrando como inicializar e acessar os detalhes da receita.\


---


# Adição de propriedades e métodos a estruturas

Situação: Traduzido automaticamente do Inglês

Traduzido automaticamente do Inglês

O uso de estruturas, também conhecidas como structs, é a base para a criação de um aplicativo iOS usando o Swift. Quando o senhor começa a trabalhar em um projeto e pensa em agrupar seu código, é comum começar com um struct.

Os structs podem ter vários valores dentro deles, o que os torna um tipo de dados complexo. Dentro de uma struct, o senhor pode criar variáveis e métodos personalizados que definem o que é a sua struct e como ela pode ser usada.

Nesta leitura, o senhor explorará e ampliará seu conhecimento sobre structs.

## **Adição de propriedades a estruturas**

Suponha que o senhor queira representar informações sobre diferentes carros no código. Isso pode ser feito por meio da criação de uma estrutura com propriedades para agrupar informações relacionadas.

Primeiro, a estrutura do carro é definida com a inserção da palavra-chave ``struct`` seguida de seu identificador, neste caso, ``Car``.
```Swift
struct Car {
}
```

Em seguida, para tornar a estrutura funcional, as propriedades precisam ser definidas para descrevê-la. Por exemplo: ``color``,`` name``, ``topSpeed`` e ``mileage``.
```Swift
struct Car {

  var color: String
  var name: String
  var topSpeed: Int
  var mileage: Int
}
```

Agora que o exemplo de estrutura foi definido, vamos aprender como ele pode ser inicializado.

## **Inicialização de um struct**

Uma grande vantagem dos structs é que o Swift fornece um inicializador padrão, também conhecido como inicializador por membro. Ao usar o inicializador memberwise, o senhor pode criar um novo objeto atribuindo-o a uma variável ou constante, e todos os parâmetros do struct estarão prontamente disponíveis.

No trecho de código abaixo, é criada uma instância ``newCar`` do tipo de dados ``Car`` e quatro propriedades são atribuídas usando o inicializador memberwise.
```Swift
var newCar = Car(color: "blue", name: "Car 1", topSpeed: 100, mileage: 5000)
```

Fica claro que as propriedades descrevem a instância ``newCar``. Usando o struct ``Car``, o senhor pode agora criar vários objetos de carro com propriedades diferentes.
```Swift
var myCar = Car(color: "pink", name: "Car 2", topSpeed: 100, mileage: 4000)
var smallCar = Car(color: "orange", name: "Car 3", topSpeed: 80, mileage: 3000)
```

Depois que as propriedades são atribuídas, é possível acessar convenientemente as propriedades individuais e imprimi-las no console.
``` Swift
print("The color of the car is: \(myCar.color).")
```

O seguinte será registrado no console:``"A cor do carro é: rosa"``

## **Adição de métodos a uma estrutura**

Da mesma forma que as propriedades são adicionadas à estrutura ``Car``, os métodos também podem ser adicionados para criar funcionalidade.

Embora ``func`` seja a palavra-chave para criar o método, o senhor pode pensar em métodos e funções no Swift como se fossem a mesma coisa. A adição de um método permitirá que o senhor leia e altere os dados da estrutura. Essa é uma das ações mais frequentes com as quais se trabalha.

O objetivo geral de um carro é levá-lo do ponto A ao ponto B. Para refletir isso no código, vamos criar um método``drive()`` para a estrutura ``Car`` para imprimir a velocidade máxima do carro. Normalmente, os métodos são adicionados abaixo das propriedades, no final da estrutura. Os métodos podem ter argumentos, mas no exemplo abaixo, o método é definido sem nenhum.
```Swift
struct Car {

  var color: String
  var name: String
  var topSpeed: Int
  var mileage: Int
  func drive() {
    print("\(color) car can drive at a maximum speed of: \(topSpeed)!")
  }
}
```

Essa função pode ser chamada na instância da estrutura ``newCar`` para exibir a velocidade máxima:
```Swift
newCar.drive()
```
O seguinte será registrado no console:``"blue car drive at a maximum speed of: 100!"``

Estruturas e Propriedades

- As structs permitem agrupar dados relacionados, como informações sobre carros, utilizando propriedades como cor, nome, velocidade máxima e quilometragem.
- Um exemplo de definição de uma struct Car é apresentado, onde as propriedades são definidas para descrever o carro.

Inicialização de uma Struct

- Swift oferece um inicializador padrão, conhecido como inicializador por membros, que facilita a criação de novos objetos a partir da struct.
- Um exemplo mostra como criar instâncias da struct Car e atribuir valores às suas propriedades.

Métodos em uma Struct

- Métodos podem ser adicionados às structs para criar funcionalidades, como um método drive() que imprime a velocidade máxima do carro.
- O exemplo demonstra como chamar o método em uma instância da struct para exibir informações no console.


---


```Swift
  
struct Car {

  var color: String
  var name: String
  var topSpeed: Int
  var mileage: Int

  func drive() {
    print("\(color) car can drive at a maximum speed of: \(topSpeed)!")
  }
}

var newCar = Car(color: "blue", name: "Car 1", topSpeed: 100, mileage: 5000)
var myCar = Car(color: "pink", name: "Car 2", topSpeed: 100, mileage: 4000)
var smallCar = Car(color: "orange", name: "Car 3", topSpeed: 80, mileage: 3000)
  
newCar.drive()
myCar.drive()
smallCar.drive()
```
SAÍDA NO CONSOLE:
```swift
blue car can drive at a maximum speed of: 100!

pink car can drive at a maximum speed of: 100!

orange car can drive at a maximum speed of: 80!
```

> [!Estruturas e Classes]
> **https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/**


> [!TIPOS DE VALOR E REFERENCIA]
> https://www.swift.org/blog/?id=10


> [!INICIALIZADOR]
> > https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization/