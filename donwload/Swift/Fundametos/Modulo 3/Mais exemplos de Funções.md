
# **Nomes de parâmetros de funções**

Até agora, o senhor explorou funções com nomes de parâmetros específicos para identificar cada parâmetro. O senhor deve ter notado que os nomes dos parâmetros têm o mesmo valor que os nomes das variáveis.

Quando o senhor chama uma função, pode não ficar claro para que cada parâmetro é usado.

Por exemplo, a função abaixo pega o nome e o sobrenome e os concatena:
```Swift
func hiThere(fn: String, sn: String) {
      let fullname = fn + " " + sn
      print("Hi there \(fullname)")
} 
```

Agora, o senhor pode chamar essa função de outro lugar da seguinte forma:

==hiThere(fn:  "Fred", sn:  "Bloggs")==

Para tornar sua função mais utilizável, o senhor pode escapar do nome do parâmetro adicionando um sublinhado ( _ ) antes do nome do parâmetro na assinatura da função.

Por exemplo:
```Swift
func hiThere(_ fn: String, _ sn: String)  {
  let fullname = fn + " " + sn
  print("Hi there \(fullname)")
} 
```

Agora o senhor pode chamar essa função de outro lugar da seguinte forma:

==hiThere("Fred", "Bloggs")==

Observe que o nome do parâmetro não precisa mais ser incluído quando a função é chamada.

# **Nomes de parâmetros de funções externas**

Até agora, o senhor aprendeu sobre os nomes de parâmetros padrão. Entretanto, ao definir uma função, o senhor pode acrescentar um nome adicional a cada argumento.

Esses nomes são chamados de nomes **de parâmetros externos**. Os nomes de parâmetros externos são escritos antes do nome local e são separados por um espaço.

O senhor pode usá-los quando chamar a função, tornando a intenção mais óbvia.

Como exemplo, a função abaixo pega um nome e um sobrenome e os concatena
```Swift
func hiThere(firstname fn: String, surname sn: String)  {
  let fullname = fn + " " + sn
  print("Hi there \(fullname)")
}
```

Agora, o senhor pode chamar essa função de outro lugar da seguinte forma:

==hiThere(firstname: "Fred", surname: "Bloggs")==

# **Valores de parâmetro padrão**

Como parte da definição da função, o senhor pode fornecer um valor padrão para qualquer um dos parâmetros.

Se um valor padrão for usado, o senhor poderá omitir o parâmetro ao chamar a função. Para isso, o senhor colocará os parâmetros com valores padrão no final da lista.

Como exemplo, a função abaixo usa um valor padrão para o parâmetro do último argumento:
```Swift
func display(_ s1: String,  _ s2: String, score: Int = 0) {
  let name_score = s1 + " " + s2 + " " + String(score)
  print("Hello \(name_score)")
}
```

Nessa função, o parâmetro do último argumento (pontuação) será definido como 0 (zero) se nenhum valor for fornecido quando um _inicializador memberwise_ for usado.

Agora o senhor pode chamar essa função de outro lugar, assim:

==display("John", "Roberts")== 

Isso imprimirá **"John Roberts 0"** no console.

Observe que o valor padrão é usado, pois nenhum valor é inserido para a pontuação onde a função é chamada.

Abaixo está um exemplo em que o valor de 100 é inserido para a pontuação:

==display("John",  "Roberts",  score: 100)==

Isso imprime **"John Roberts 100"** no console:

**Observação:** Conforme definido no [guia da linguagem de programação Swift](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html):

_"O_ _**inicializador memberwise**_ _é uma forma abreviada de inicializar as propriedades de membro de novas instâncias de estrutura. Os valores iniciais para as propriedades da nova instância podem ser passados para o inicializador memberwise por nome."_

---

	
## **NA PRATICA**

```Swift
var goldenBars = 0
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}

incrementInventory(&goldenBars)
print(goldenBars)

incrementInventory(&goldenBars)
print(goldenBars)

incrementInventory(&goldenBars)
print(goldenBars)

incrementInventory(&goldenBars, by: 300)
print(goldenBars)

incrementInventory(&goldenBars, by: 50)
print(goldenBars)

```

SAÍDA NO CONSOLE:
```Swift
100
200
300
600
650
```


*Em seguida, analise o detalhamento das etapas individuais abaixo.*

## **Etapa 1: Declarar uma variável**
```Swift
var goldBars = 0
```
## **Etapa 2: Adicionar a função não adoçada**

Adicionar a função não adoçada ao seu playground:
```Swift
func incrementInventory(inventory: Int) -> Int {
  return inventory + 100
}
```
## **Etapa 3: Adicionar um segundo parâmetro**

Adicionar um segundo parâmetro chamado amount do tipo Int à função.
```Swift
func incrementInventory(inventory: Int, amount: Int) -> Int {
  return inventory + 100
}
```
## **Etapa 4: Atualizar o corpo**

Substituir 100 por amount no corpo da função.
``` Swift
func incrementInventory(inventory: Int, amount: Int) -> Int {
  return inventory + amount
}
```
## **Etapa 5: Fornecer um valor de parâmetro padrão**

Fornecendo amount com um valor padrão de 100.
```Swift
func incrementInventory(inventory: Int, amount: Int = 100) -> Int {
  return inventory + amount
}
```
## **Etapa 6: adicionar um rótulo de argumento**

Adicionar um rótulo de argumento chamado by para o parâmetro amount.
```Swift
func incrementInventory(inventory: Int, by amount: Int = 100) -> Int {
  return inventory + amount
}
```
## **Etapa 7: omitir um rótulo de argumento**

Omitir o rótulo de argumento de inventory.
```Swift
func incrementInventory(_ inventory: Int, by amount: Int = 100) -> Int {
  return inventory + amount
}
```
## **Etapa 8: criar um parâmetro in-out**

Converter inventory em um parâmetro de entrada e saída.
```Swift
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) -> Int {
  return inventory + amount
}
```
## **Etapa 9: definir o valor do parâmetro in-out no corpo**

Definir o parâmetro in-out igual a ele mesmo mais amount e remover o tipo de retorno da função porque o senhor não precisa mais retornar um valor.
```Swift
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
inventory += amount
}
```

## **Etapa 10: Chamar a função**

Usando sua função aprimorada.
``` Swift
incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars, by: 300)
print(goldBars)

incrementInventory(&goldBars, by: 50)
print(goldBars)
```