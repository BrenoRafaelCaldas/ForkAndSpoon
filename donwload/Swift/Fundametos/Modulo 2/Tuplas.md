### Definição e Utilização de Tuplas

- Tuplas permitem agrupar valores temporários relacionados, sendo uteis para atribuir  múltiplos valores a uma variável ou retornar vários valores de uma função
- Ao contrário de arrays, que podem ser mais complexos, as tuplas são uma forma simples de agrupar dados.


### Criação e Decomposição de Tuplas

- Para criar uma tupla, utiliza-se a palavra-chave **`var`**, em seguida do nome da variável e dos valores entre parêntases, separados por vírgulas.
- A decomposição de uma tupla pode ser feita atribuindo seus elementos a variáveis individuais ou utilizando parâmetros nomeados.


### Acesso e Modificação de Valores em Tuplas

- Os valores em uma tupla podem ser acessados por meio de índices, começando do zero, ou usando nomes de parâmetros.
- É possível ignorar valores específicos durante a decomposição utilizando o símbolo de sublinhado **``( _ )``** permitindo que apenas certos valores sejam mantidos. 


### Comibinação de Arrays

- É possível adicionar dois arrays do mesmo tipo usando símbolo de adição ``( + )``
- Um exemplo é a criação de um novo array que combina valores de dois arrays inteiros.


### Uso de Tipos Mistos

- Swift permite a criação de arrays com tipos mistos usando o tipo **``"Any"``**.
- O tipo ``"Any"``pode representar diferentes tipos básicos, como strings, inteiros e doubles, permitindo a inclusão de múltiplos tipos em um único array.


#### Considerações Finais

- Embora seja possível criar arrays com múltiplos tipos, pode não ser a forma mais eficiente de estruturar dados.
- Existem outras opções em Swift para lidar com dados de forma mais otimizada, que serão aboradas em aulas futuras.



## **Armazenamento de Credenciais**

- Crie uma constante chamada `credentials` para armazenar a senha e o código de acesso.
- A tupla deve conter a senha como uma cadeia de caracteres vazia e o código de acesso como -1111.

**Avaliação das Credenciais**

- Utilize uma estrutura `if else` para verificar se as credenciais são válidas.
- A senha não deve ser vazia e o código de acesso deve ser um número positivo.

**Armazenamento de Credenciais Completas**

- Crie uma nova constante chamada `fullCredentials` com valores válidos para a senha e o código de acesso.
- Use rótulos para identificar os elementos da tupla.

**Reavaliação das Credenciais**

- Verifique novamente a validade das credenciais completas e imprima o status no console.
- A saída deve indicar se as credenciais são válidas ou não.


```Swift
let credentails = ("", -1111)
if credentails.0 == "" || credentails.1 < 0 {
	print("Invalid credentails")
} else {
	print("The username is \(credentails.0) and you password is \(credentails.1)")
}

let fullCredentails = (password: "pass", passCode: 1111)
if fullCredentails.password == ""|| fullCredentails.passCode < 0 {
	print("Invalid credentails)	
} else {
	print("The password is \(fullCredentails.password) and passCode is \(fullCredentails.passCode)")
}

```
### ``SAÍDA NO CONSOLE ⬇️``
```Swift
// Invalid credentails!
// The password is pass and the passCode is 1111
```

###  Solução do Código

- O código define um par de credenciais como uma tupla.
- Utiliza uma estrutura condicional para verificar se as credenciais são válidas.

### Passos do Exercício

- *Passo 1*: Armazenar credenciais em uma tupla
- *Passo 2*: Avaliar as credenciais usando uma declaração `if else` com o operador OR.
- *Passo 3*:  Armazenar credenciais completas em uma tupla rotulada.
-  *Passo 4*: Reavaliar as credenciais completas com uma nova verificação condicional.