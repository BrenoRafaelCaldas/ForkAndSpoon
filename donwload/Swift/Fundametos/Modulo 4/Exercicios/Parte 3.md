

**Classe VirtualBankSystem**

- Gerencia o tipo de conta (débito ou crédito) e o estado do sistema (aberto ou fechado).
- Inclui métodos para dar boas-vindas ao cliente, solicitar a abertura de conta e realizar operações de transferência de dinheiro.

**Estrutura BankAccount**

- Define as propriedades de uma conta bancária, como saldo de débito e crédito, e métodos para depósitos e retiradas.
- Inclui verificações para garantir que as operações sejam válidas, como saldo suficiente para retiradas.

**Operações do Sistema**

- O sistema permite ao usuário escolher entre verificar saldo, retirar ou depositar dinheiro, ou fechar o sistema.
- As opções são geradas aleatoriamente, simulando um ambiente interativo.

Analise o código da solução para a parte 3 do projeto de conta bancária abaixo.
```Swift
class VirtualBankSystem {
    var accountType = ""
    var isOpened = true
    
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

    func transferMoney(
        transferType: String,
        transferAmount: Int,
        bankAccount: inout BankAccount
    ) {

        switch transferType {
        case "withdraw":
            if accountType == "credit" {
                bankAccount.creditWithdraw(transferAmount)
            } else if accountType == "debit" {
                bankAccount.debitWithdraw(transferAmount)
            }

        case "deposit":
            if accountType == "credit" {
                bankAccount.creditDeposit(transferAmount)
            } else if accountType == "debit" {
                bankAccount.debitDeposit(transferAmount)
            }
        default:
            break
        }
    }

    func checkBalance(
        bankAccount: BankAccount
    ) {
        switch accountType {
        case "credit":
            print(bankAccount.creditBalanceInfo)

        case "debit":
            print(bankAccount.debitBalanceInfo)

        default:
            break
        }
    }
}


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
  
let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.welcomeCustomer()
  
repeat {
    virtualBankSystem.onboardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""


let transferAmount = 50
print("Transfer amount: $\(transferAmount)")

var bankAccount = BankAccount()

repeat {
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")

    let option = Int.random(in: 1...5)
    print("Selected option: \(option).")

    switch option {
    case 1:
        virtualBankSystem.checkBalance(bankAccount: bankAccount)
        
    case 2:
        virtualBankSystem.transferMoney(
            transferType: "withdraw",
            transferAmount: transferAmount,
            bankAccount: &bankAccount
        )

    case 3:
        virtualBankSystem.transferMoney(
            transferType: "deposit",
            transferAmount: transferAmount,
            bankAccount: &bankAccount
        )

    case 4:
        virtualBankSystem.isOpened = **false**
        print("The system is closed.")

    default:
        break
    }
} while virtualBankSystem.isOpened
```
## SAÍDA NO CONSOLE: 
```Swift
Welcome to your virtual bank system.

What kind of account would you like to open?

1. Debit account

2. Credit account

The selected option is 3.

Invalid input: 3

What kind of account would you like to open?

1. Debit account

2. Credit account

The selected option is 2.

You have opened a credit account.

Transfer amount: $50

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 1.

Available credit: $100

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 5.

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 2.

Credit withdraw: $50. Available credit: $50

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 5.

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 1.

Available credit: $50

What would you like to do?

1. Check bank account

2. Withdraw money

3. Deposit money

4. Close the system

Selected option: 4.

The system is closed.
```

# Resumo do projeto da conta bancária

Situação: Traduzido automaticamente do Inglês

Traduzido automaticamente do Inglês

O senhor trabalhou com funções, loops, instruções switch, estruturas e classes para criar um simulador de conta bancária funcional. O senhor usou estruturas e classes para configurar as operações do simulador de conta bancária e usou loops para processar a entrada do usuário e criar contas bancárias válidas. Além disso, o senhor implementou instruções condicionais e instruções switch para garantir que o simulador seja executado sem problemas.

Reserve um momento para refletir sobre o que o senhor realizou. O senhor atingiu vários marcos e consolidou sua compreensão dos conceitos fundamentais de programação em Swift. **Muito bem!**`