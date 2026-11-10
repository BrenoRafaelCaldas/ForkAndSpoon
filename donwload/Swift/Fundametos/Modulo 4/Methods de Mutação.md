## O que são Methods

- Em Swift, um _method_ é uma função que está associada a um tipo, ou seja, a uma classe (`class`), estrutura (`struct`) ou enumeração (`enum`). [docs.swift.org+1](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods/?utm_source=chatgpt.com)
    
- Há dois grandes grupos principais:
    
    1. **Instance methods** — ligados a instâncias específicas de um tipo. [docs.swift.org+1](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods/?utm_source=chatgpt.com)
        
    2. **Type methods** — ligados ao próprio tipo, não a uma instância concreta. [docs.swift.org+1](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods/?utm_source=chatgpt.com)
        

---

## Instance Methods

- Definidos dentro de uma `class`, `struct` ou `enum`.
    
- Quando invocados, operam sobre uma instância específica do tipo, podendo aceder às propriedades dessa instância, chamar outros métodos da instância, etc. [GeeksforGeeks+1](https://www.geeksforgeeks.org/swift/swift-methods/?utm_source=chatgpt.com)
    
- Dentro de um método de instância pode-se usar a palavra-chave `self` para referir a própria instância atual. [GeeksforGeeks+1](https://www.geeksforgeeks.org/swift/swift-methods/?utm_source=chatgpt.com)
    
- Para estruturas (value types) e enumerações, se um método de instância pretende modificar as propriedades da instância, ele precisa ser marcado com a palavra-chave `mutating`. Assim permite mutar o valor da instância. [GeeksforGeeks](https://www.geeksforgeeks.org/swift/swift-methods/?utm_source=chatgpt.com)
    

---

## Type Methods

- São métodos definidos para o próprio tipo em vez de para instâncias.
    
- Em `struct` e `enum`, usam normalmente a palavra-chave `static func`. Em `class`, pode usar `class func` para permitir override por subclasses. [GeeksforGeeks+1](https://www.geeksforgeeks.org/swift/swift-methods/?utm_source=chatgpt.com)
    
- São chamados usando o nome do tipo, e não de uma instância. [GeeksforGeeks](https://www.geeksforgeeks.org/swift/swift-methods/?utm_source=chatgpt.com)
    
---

## Porque usar Methods

- Permitem organizar funcionalidade dessas formas: dada uma instância ou tipo, agrupar comportamentos relevantes com os dados que eles manipulam.
    
- Ajudam a tornar o código mais modular, legível e reutilizável.
    
- Permitem distinguir claramente operações que pertencem a instâncias versus operações que pertencem ao tipo como todo.
--- 


### Estruturas e Métodos

- As estruturas permitem agrupar dados e funcionalidades relacionadas, utilizando propriedades e métodos.
- Métodos normais não podem alterar valores de propriedades, enquanto métodos mutantes podem.

### Métodos Mutantes

- Um método mutante é declarado com a palavra-chave "mutating", permitindo que a estrutura altere suas propriedades.
- O exemplo prático envolve uma estrutura chamada "Recipe" com um contador de pedidos que pode ser incrementado ou decrementado.

### Demonstração Prática

- Ao criar métodos para incrementar e decrementar o contador, o uso de métodos não mutantes resulta em um erro de compilação.
- A conversão para métodos mutantes permite que as alterações sejam feitas corretamente, demonstrando a funcionalidade esperada.

```Swift
struct tableReservation {
    var name : String
	let tableNumber : Int
     mutating func updateBooking(updateName: String) {
        name = updateName
    }
}	
var jhonBooking = tableReservation(name: "Jhon", tableNumber: 1)
print(jhonBooking)

jhonBooking.updateBooking(updateName: "Maria")
print(jhonBooking)
```
### SAÍDA NO CONSOLE:
```Swift
tableReservation(name: "Jhon", tableNumber: 1)

tableReservation(name: "Maria", tableNumber: 1)
```

*Em seguida, analise o detalhamento das etapas individuais abaixo.*

### **Etapa 1: Declarar um struct para manter as informações de reserva de uma mesa**
``` Swift
struct TableReservation {
}
```

### **Etapa 2: adicionar informações dentro da estrutura que será mantida**
```Swift
struct TableReservation {
    var name: String
    var tableNumber: Int
}
```

### **Etapa 3: criar uma nova reserva de mesa**
```Swift
var johnBooking = TableReservation(name: "John", tableNumber: 1)
```

### **Etapa 4: enviar a reserva para o console**
```Swift
print(johnBooking)
```

### **Etapa 5: definir um método para atualizar o nome do cliente**
```Swift
struct TableReservation {
	var name: String
	var tableNumber: Int
	mutating func updateBooking(updatedName: String) {
	}
}
```

### **Etapa 6: implementar um método para atualizar o nome do cliente**
```Swift
struct TableReservation {
    var name: String
    var tableNumber: Int
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }
}
```

### **Etapa 7: Atualizar o nome do cliente para a reserva**
```Swift
johnBooking.updateBooking(updatedName: "Maria")
```

### **Etapa 8: enviar a reserva para o console para confirmar a alteração**
``` Swift
print(johnBooking)
```



> [!Métodos]
> https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods