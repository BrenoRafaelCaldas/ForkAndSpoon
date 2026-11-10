
**Estrutura do Sistema Bancário Virtual**

- A classe `VirtualBankSystem` é criada com uma propriedade `accountType`para armazenar o tipo de conta.
- Métodos são definidos para dar boas-vindas ao cliente e para orientar a abertura de contas.

**Processo de Abertura de Conta**

- O método `makeAccount`utiliza um `switch` para determinar o tipo de conta com base na entrada do usuário (débito ou crédito).
- Um loop `repeat while` é utilizado para garantir que uma conta válida seja criada, repetindo o processo até que o usuário escolha uma opção válida.

**Exemplo de Saída**

- O sistema exibe mensagens de boas-vindas e solicita ao usuário que escolha o tipo de conta, mostrando a opção selecionada e confirmando a abertura da conta.

```Swift
class VirtualBankSystem {
    var accountType = ""

    func welcomeCustomer() {
        print("Welcome to your virtual bank system.")
    }

    func onboardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }

    func makeAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")

        switch numberPadKey {
        case 1:
	          accountType = "debit"
        case 2:
	          accountType = "credit"
        default:
			  print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
}

let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.welcomeCustomer()

repeat {
    virtualBankSystem.onboardCustomerAccountOpening()

    let numberPadKey = Int.random(in: 1...3)

    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""
```

SAIDA NO CONSOLE: 
```Swift
Welcome to your virtual bank system.
What kind of account would you like to open?
1. Debit account
2. Credit account
The selected option is 1.
You have opened a debit account.
```

Observe que sua saída pode ter valores diferentes, pois os números são gerados aleatoriamente. O loop repeat while se repete um número variável de vezes até que uma conta bancária válida seja criada. Sua saída pode ser ligeiramente diferente da acima.

Em seguida, analise o detalhamento individual das etapas abaixo.

## **Etapa 1: Iniciar a interface do sistema do banco virtual**
```Swift
class VirtualBankSystem {
		var accountType = ""
		func onboardCustomerAccountOpening() {
		print("Welcome to your virtual bank system.")
		}
		func welcomeCustomer() {
		print("What kind of account would you like to open?")
		print("1. Debit account")
		print("2. Credit account")
		}
}   
```
## **Etapa 2: Criar uma propriedade para o tipo de conta bancária**
```Swift
var accountType = ""

var input = 0
```
## **Etapa 3: Criar o tipo de conta bancária com base na entrada do usuário**
``` Swift
func makeAccount(numberPadKey: Int) {
    print("The selected option is \(numberPadKey).")

    switch numberPadKey {
    case 1:
        accountType = "debit"

    case 2:
        accountType = "credit"

    default:
        print("Invalid input: \(numberPadKey)")

        return
    }
    print("You have opened a \(accountType) account.")
}
```
## **Etapa 4: Dar as boas-vindas ao cliente com uma instância do sistema bancário virtual**
```Swift
let virtualBankSystem = VirtualBankSystem() 

virtualBankSystem.welcomeCustomer() 
```
## **Etapa 5: Gerar a entrada do usuário no loop de repetição while**
```Swift
repeat {
    virtualBankSystem.onboardCustomerAccountOpening()

    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)

} while virtualBankSystem.accountType == ""
```