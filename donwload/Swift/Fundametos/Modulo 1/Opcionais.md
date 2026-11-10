
## **Resumo sobre Opcionais**

### 🔹 **O que são**

Opcionais permitem que uma variável **tenha um valor ou seja `nil`** (vazia).

Em Swift, só variáveis opcionais podem ser `nil`, o que torna o código mais seguro e previsível.

---

### 🔹 **Por que usar**

- Indicam que **um valor pode estar ausente**.
- Evitam erros de execução (como acessar algo inexistente).
- Forçam o programador a **tratar situações nulas de forma consciente**.

---

### 🔹 **Como funcionam**

- Um opcional pode conter **um valor real** ou **`nil`**.
- Para usar o valor, é preciso **desembrulhar (unwrap)** — ou seja, verificar se ele existe antes de usar.

---

### 🔹 **Formas de lidar com opcionais**

- **Forçar uso (`!`)** → usa o valor diretamente, mas causa erro se for `nil`.
- **Verificação segura (`if let` / `guard let`)** → checa se há valor antes de usar.
- **Encadeamento opcional (`?.`)** → acessa propriedades de forma segura (sem crashar).
- **Valor padrão (`??`)** → define um valor substituto caso o opcional esteja vazio.
- **Implicitamente desembrulhado (`!` na declaração)** → usado quando o valor certamente existirá depois.

|**Conceito**|**Descrição breve**|
|---|---|
|?|Pode ter valor ou ser `nil`|
|!|Força o uso (perigoso se `nil`)|
|`if let` / `guard let`|Verificação segura|
|?.|Acesso seguro a propriedades|
|??|Valor padrão quando `nil`|
|||

> 💡 **Dica rápida** Use opcionais **sempre que um valor possa não existir**, mas **desembrulhe com segurança** para evitar erros no código.

## **Criando Variáveis e Constantes**

- Crie uma variável chamada `password` e atribua a ela o valor "1234".
- Crie uma constante chamada `passcode` que converte a `password` em um número inteiro.

**Usando Desembrulhamento Forçado e Binding Opcional**

- Utilize o operador de desembrulhamento forçado (!) para imprimir o `passcode`.
- Verifique se o `passcode` é válido usando `if let`. Se não for, imprima "Código de acesso inválido!".

**Definindo Códigos de Acesso Padrão**

- Se o `passcode` não for válido, defina um código padrão, como 1111.

**Implementando Autenticação de Dois Fatores**

- Crie duas senhas e use múltiplos bindings para verificar ambas.
- Defina códigos de acesso padrão para autenticação se algo der errado.

**Conclusão**

- O exercício ensina a usar o desembrulhamento forçado e o binding opcional para trabalhar com valores que podem ser nil, criando um gerador de senhas e códigos de acesso.

```swift
var password = "1234"
let passcode = Int(password)
print("The passcode of the app is \\(password).")
password = "Hello World"
if let code = Int(password) {
    print("The passcode of the app is \\(code).")
} else {
    print("Invalid password!")
}
let acessCode: Int
if let code = Int(password) {
    acessCode = code
} else {
    acessCode = 1111
}
print("The passcode of the app is \\(acessCode).")

let firstPassword = "Hello"
let secondPassword = "World"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first code is \\(firstPasscode) and second code is \\(secondPasscode).")
} else {
print("Invalid passcode!")
}
let firstAcesscode: Int
let secondAcesscode: Int
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAcesscode = firstPasscode
    secondAcesscode = secondPasscode
} else {
    firstAcesscode = 1111
    secondAcesscode = 2222
}
print("The first passcode of the app is \\(firstAcesscode) and second passcode of te app is \\(secondAcesscode).")

```

### SAÍDA NO CONSOLE ⬇️

```swift
// The passcode of the app is 1234.
// Invalid passcode!
// The passcode of the app is 1111.
// Invalid passcodes!
// The first passcode of the app is 1111 and the second passcode of the app is 2222.
```