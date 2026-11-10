# **Definição e Estrutura de Dicionários**

- Um dicionário é uma coleção de itens onde cada item tem uma chave única e um valor associado.
- As chaves e valores devem ser do mesmo tipo, como String para nomes e Int para milhas.

### **Criação e Manipulação de Dicionários**

- Para criar um dicionário, define-se uma variável e especifica-se os tipos de chave e valor.
- É possível contar os itens em um dicionário usando a propriedade `count`.

### **Acesso e Modificação de Itens**

- Itens podem ser adicionados, acessados, alterados ou removidos usando métodos ou sintaxe de subscrição.
- Para evitar erros ao acessar um item que pode não existir, utiliza-se a estrutura `if let`.


### CRIAR UM DICIONÁRIO

Define uma variável e especifica os tipos de chave e valor. (Ex:)
``` Swift
var travelMiles: DictionarY<String,Int> = ["Richie": 500, "Peter": 400, "Amy": 800]
```

### CONTAR UM ITEM 

Use a propriedade `count` para contar quantos itens estão no dicionário. (Ex)
```Swift
let itemCout = travelMiles.count
```

### ADICIONAR UM ITEM

Adciona um novo par de chave-valor ao dicionário. (Ex:)
``` Swift
travelMiles["Darly"] = 700
```

### ACESSAR UM ITEM 

Acessa o valor associado a uma chave, usando o `if let` para evitar erros se a chave não existir. (Ex:)
``` Swift
if let travelMiles = traveMiles["Peter"] {
	Print(travelMiles)
}```

### ALTERAR UM ITEM 

Atualiza o valor associado a uma chave existente.(Ex:)
``` Swift
travelMiles["Richie"] = 1200
```

### REMOVER UM ITEM

Remova um item usando o método `removeValue(forKey:)` ou atrivuindo `nil`
à chave.
```Swift
travekMiles.removeValue(forKey:"Richie")

// or

travelMiles["Richie"] = nil
// Lembrando que o segundo exemplo o valor não pode ser acessado depois.
```


## Criação de Dicionário

- Um dicionário vazio é criado para armazenar as temperaturas da semana.
- O tipo do dicionário é explicitamente definido como `[String: Int]`.

### Atualização das Temperaturas

- As temperaturas diárias são atribuídas ao dicionário.
- A temperatura de `monday` é atualizada usando o operador de adição.

### Adição de Novos Valores 

- O código verifica se a temperatura de `Sunday` ja existe.
- Se não existir, a temperatura é adicionada e definida como 100ºF.

### Reset do Dicionário

-  Se o dicionário contém 7 entradas, uma mensagem é exibida e o dicionário é redefinido para a próxima semana. 

```Swift
var weeklyTemperature: Dicionary<String, Int> = [:]

weeklyTemperature = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]

weeklyTemperature["Monday"]! += 20
	print("The temperature on Monday is \(weeklyTemperature["Monday"]!)F.")

if let temperature	= weeklyTemperature["Sunday"]{
	print("The temperature of Sunday is \(weeklyTemperature["Sunday"])F.")
} else {
  weeklyTemperature["Sunday"] = 100
	print("The temperature of Sunday is \(weeklyTemperature["Sunday]!)F.")
}

if weeklyTemperature.count == 7 {
	print("The weather forecast for the entire week is complete.")
	weeKlyTemperature = [:]
	Print("The weekly temperature dictionary has been reset for next week..")
} ```
## `SAIDA NO CONSOLE ⬇️`

``` Swift

// The temperature on Monday is 90F.
// The temperature of Sunday is 100F.
// The weather forecast for the entire week is complete.
// The weekly temperature dictionary has been reset for next week.
```
