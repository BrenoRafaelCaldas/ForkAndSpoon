**Definição de Classes**

- Classes são tipos de referência, o que significa que, ao atribuir uma classe a uma variável, os dados são compartilhados entre as instâncias.
- Um exemplo prático é a atualização de uma receita de cookies, onde várias instâncias podem modificar a mesma receita.

**Sintaxe e Inicialização**

- Para definir uma classe, utiliza-se a palavra-chave `class`, seguida do nome e chaves para encapsular propriedades e métodos.
- As classes não têm um inicializador gerado automaticamente, então é necessário criar um inicializador personalizado para definir valores iniciais das propriedades.

**Propriedades e Compartilhamento de Dados**

- Propriedades podem ter valores padrão, e se duas variáveis referenciam a mesma instância de classe, qualquer alteração em uma delas afeta a outra.
- A criação de instâncias de classe é feita através do inicializador, permitindo que diferentes receitas sejam geradas e manipuladas de forma compartilhada.

--- 

Estruturas vs. Classes

- Estruturas são tipos de valor, o que significa que, ao serem atribuídas a uma variável, uma cópia é criada. Alterações em uma cópia não afetam a original.
- Classes são tipos de referência, armazenando a localização na memória. Alterações em uma instância de classe afetam todas as referências a essa instância.

Exemplo Prático

- Um exemplo de receita ilustra como as estruturas funcionam: ao copiar uma receita de um usuário para outro, cada um tem sua própria versão, e mudanças em uma não afetam a outra.
- Com classes, se uma receita é alterada, todas as referências àquela receita refletem a mudança, pois apontam para o mesmo local na memória.

Recomendações de Uso

- É sugerido usar estruturas como blocos de construção principais devido à sua previsibilidade e menor chance de comportamentos inesperados.
- Classes devem ser usadas quando é necessário um estado compartilhado que muda ao longo do tempo

---

Propriedades Armazenadas

- Swift possui dois tipos de propriedades: armazenadas e computadas. Propriedades armazenadas são usadas para armazenar valores em instâncias de classes ou estruturas.
- Existem duas variações de propriedades armazenadas: constantes (usando `let`) e variáveis (usando `var`), que podem ter valores padrão ou serem inicializadas.

Propriedades Computadas

- Propriedades computadas calculam um valor e retornam o resultado, funcionando como uma função com um tipo de retorno.
- Ao contrário das propriedades armazenadas, as propriedades computadas são somente leitura e são úteis para encapsular código computacional ou calcular valores repetidamente.

--- 

Analise o código completo do exercício abaixo:
``` Swift
  class localFile {

    let name: String
    let fileExtension: String

    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
    
    var fullFileName: String {
        name + fileExtension
    }
}

let file = localFile(name: "Image", fileExtension: ".png")
print(file.fullFileName)
```
## Saída no console:
```Swift
image.png
```
Em seguida, analise o detalhamento das etapas individuais abaixo.

### **Etapa 1: Criar uma classe para representar um arquivo local com duas propriedades armazenadas**
```Swift
class LocalFile {
  let name: String
  let fileExtension: String
}
```
### **Etapa 2: Declarar um método init para poder inicializar a classe posteriormente**
```Swift
init(name: String, fileExtension: String) {
  self.name = name
  self.fileExtension = fileExtension
}
```
### **Etapa 3: Criar uma propriedade computada que retorne o nome completo do arquivo**
```Swift
var fullFileName: String {
  return name + "." + fileExtension
}
```
### **Etapa 4: Criar uma instância da classe para verificar se ela funciona como esperado**
```Swift
let file = LocalFile(name: "image", fileExtension: "png")

print(file.fullFileName)
```

> [!CLASS]
> 
> https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/
