
Estrutura da Conta Bancária

- A estrutura `BankAccount`contém propriedades para saldo de débito e crédito, além de um limite de crédito.
- Métodos para obter informações sobre os saldos de débito e crédito são definidos.

Operações de Depósito e Saque

- Métodos para depósitos e saques são implementados para as contas de débito e crédito.
- O código inclui verificações para garantir que os saques não excedam os saldos disponíveis.

Exemplo de Uso

- Um exemplo prático demonstra a criação de uma instância da conta bancária e a execução de operações de depósito e saque, mostrando a saída no console.


```Swift
struct BankAccount {

    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100

    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }

    var availableCredit: Int {
        creditLimit + creditBalance
    }

    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }

    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        print("Debit deposit: $\(amount). \(debitBalanceInfo)")

    }

    mutating func debitWithdraw(_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient funds to withdraw $\(amount). \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }

    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        print("Credit deposit: $\(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Paid off credit balance.")

        } else if creditBalance > 0 {
            print("Overpaid credit balance.")
        }
    }

    mutating func creditWithdraw(_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

var bankAccount = BankAccount()

print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
```
## SAIDA NO CONSOLE:
```Swift
Debit balance: $0
Debit deposit: $100. Debit balance: $100
Debit withdraw: $20. Debit balance: $80
Insufficient funds to withdraw $81. Debit balance: $80
Available credit: $100
Insufficient credit to withdraw $101. Available credit: $100
Credit withdraw: $100. Available credit: $0
Credit deposit: $50. Available credit: $50
Credit deposit: $50. Available credit: $100
Paid off credit balance.
Credit deposit: $100. Available credit: $200
Overpaid credit balance.
```

*Em seguida, analise o detalhamento individual das etapas abaixo.*
## **  
## Etapa 1: Definir a estrutura da conta bancária**
```Swift
struct BankAccount {
}
```

## **Etapa 2: Criar propriedades de saldo bancário de débito e crédito**
```Swift
var debitBalance = 0
var creditBalance = 0
let creditLimit = 100

var debitBalanceInfo: String {
    "Debit balance: $\(debitBalance)"
}

var availableCredit: Int {
    creditLimit + creditBalance
}

var creditBalanceInfo: String {
    "Available credit: $\(availableCredit)"
}
```

## **Etapa 3: Implementar a operação de depósito para contas bancárias de débito e crédito**
```Swift
mutating func debitDeposit(_ amount: Int) {
    debitBalance += amount
    print("Debit deposit: $\(amount). \(debitBalanceInfo)")
}

mutating func creditDeposit(_ amount: Int) {
    creditBalance += amount
    print("Credit deposit: $\(amount). \(creditBalanceInfo)")
    if creditBalance == 0 {
        print("Paid off credit balance.")
    } else if creditBalance > 0 {
        print("Overpaid credit balance.")
    }
}
```

## **Etapa 4: Implementar a operação de retirada para contas bancárias de débito e crédito**
```Swift
mutating func debitWithdraw(_ amount: Int) {
    if amount > debitBalance {
        print("Insufficient funds to withdraw $\(amount). \(debitBalanceInfo)")
    } else {
        debitBalance -= amount
        print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
    }
}

mutating func creditWithdraw(_ amount: Int) {
    if amount > availableCredit {
        print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
    } else {
        creditBalance -= amount
        print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
    }
}
```

## **Etapa 5: Criar uma instância de conta bancária**
```Swift
var bankAccount = BankAccount()
```
## **Etapa 6: Testar as operações bancárias de débito**
```Swift
print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
```

## **Etapa 7: Testar as operações bancárias de crédito**
```Swift
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
```