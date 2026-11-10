- **Definição**: Uma string é uma sequência de caracteres, que pode incluir letras, números, símbolos e espaços. Em Swift, strings são representadas pelo tipo `String`.
    
- **Criação**: Você pode criar uma string usando aspas duplas. Por exemplo:
    
    let greeting = "Olá, mundo!"
    
- **Manipulação**:
    
    - **Concatenação**: Você pode unir strings usando o operador `+`:
        
        let firstName = "João"
        let lastName = "Silva"
        let fullName = firstName + " " + lastName
        
    - **Interpolação**: Você pode inserir valores de variáveis dentro de uma string usando `\()`:
        
        let age = 25
        let message = "Eu tenho \(age) anos."
        
- **Métodos Comuns**:
    
    - `count`: Retorna o número de caracteres na string.
    - `uppercased()`: Converte todos os caracteres para maiúsculas.
    - `lowercased()`: Converte todos os caracteres para minúsculas.
    - `contains()`: Verifica se uma substring está presente.
- **Strings Mutáveis**: Em Swift, você pode usar `var` para criar strings que podem ser alteradas:
    ```Swift
    
    var mutableString = "Texto inicial"
    mutableString += " - Texto adicionad" 
    ```

- - - - - - - - - - - - - - - - - - -
    
```swift
let day = "Monday"
print("Today is \\(day) ")

let hour = "6"
let minutes = "15"
let period = "PM"

var time = hour + ":" + minutes + "" + period
print("It is \\(time)")

print("It is \\(time) on \\(day)")

let timezone = " PST"
time += "\\(timezone)"

print("It is \\(time)")
print("It is \\(time) on \\(day)")

let shortDay = day.prefix(3)
print("Today is \\(day)")

print("It is \\(time) on \\(shortDay)")
```

### SAÍDA NO CONSOLE ⬇️

```swift
// Today is Monday 
// It is 6:15PM
// It is 6:15PM on Monday
// It is 6:15PM PST
// It is 6:15PM PST on Monday
// Today is Monday
// It is 6:15PM PST on Mon
```

> **Este exercício ensina a criar um aplicativo de calendário básico usando strings em Swift.**
> 
> **Criando Constantes e Variáveis**
> 
> - Crie uma constante para o dia da semana, como `let day = "Monday"`.
> - Use `print` para exibir o dia atual no console, aplicando interpolação de strings.
> 
> **Determinando a Hora Atual**
> 
> - Declare constantes para hora, minutos e período do dia como strings.
> - Crie uma variável `time` usando concatenação de strings para formar a hora completa.
> 
> **Atualizando e Exibindo Informações**
> 
> - Adicione a constante do fuso horário e atualize a variável `time`.
> - Exiba a hora e o dia atual no console.
> 
> **Exibindo o Nome Abreviado do Dia**
> 
> - Use o método `prefix` para obter a forma abreviada do dia da semana e imprima-a.
> 
> Este exercício foca na prática de concatenação e interpolação de strings em Swift.
> 
> Takeaway: Pratique a manipulação de strings para construir funcionalidades em seus aplicativos.
> 
> E se você quiser continuar explorando este tópico, tente uma destas perguntas complementares:

> [!String e Caracteres]
> 
> https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters