
> Quando você cria um campo de texto em um aplicativo, como quando um cliente digita seu nome para se inscrever em uma newsletter, você pode usar uma variável chamada "input value" para guardar o que foi digitado. Essa variável é conectada ao campo de texto, e sempre que o usuário digita algo, esse valor é automaticamente armazenado. Por exemplo, se você tem um campo de texto para o nome do cliente, tudo o que ele digitar será salvo nessa variável.
> 
> Além disso, você pode querer saber quando o usuário começa ou termina de editar o campo de texto. Para isso, existem modificadores que ajudam a detectar essas mudanças. Um deles é chamado "onSubmit", que permite saber quando o usuário pressionou a tecla "Enter" para enviar o que digitou. Assim, você pode programar o aplicativo para responder a essas ações, como imprimir uma mensagem no console sempre que o usuário termina de digitar.

- https://developer.apple.com/documentation/swiftui/textfield

---


Armazenamento de Valores em Variáveis de Controle

- Os campos de texto permitem que os usuários insiram texto em seu aplicativo, como ao se inscrever em uma newsletter.
- Um exemplo de código cria uma variável chamada `inputValue` usando um wrapper de propriedade chamado `@State`, que se conecta ao campo de texto.

Detecção de Mudanças e Edição

- Para detectar mudanças em tempo real, você pode usar o modificador `onChange`, que observa a variável de controle e executa uma ação quando ela muda.
- Para saber quando a edição termina, você pode usar o modificador `onSubmit`, que detecta quando o usuário pressiona a tecla de retorno.


## Visão geral

Aqui está o código da solução completa do arquivo ReservationForm.swift para este exercício:
```Swift
import SwiftUI

struct ReservationForm: View { 

    @State var customerName:String = "" 

    var body: some View {  

        Form {
            TextField("Type Your Name", 
                text:$customerName, 
                onEditingChanged: { status in 
                    print(status) 
                }) 
            .onSubmit({ 
                print("submitted") 
            }) 
            .onChange(of: customerName, perform: { newValue in 
                print(newValue) 
            }) 
        }
        .padding() 
    } 
} 

struct ReservationForm_Previews: PreviewProvider {

    static var previews: some View {
        ReservationForm()
    }
}
```
### **Tarefa 1: Criar o formulário**

O senhor criou uma nova visualização SwiftUI chamada ReservationForm.
```Swift
struct ReservationForm: View { 

    var body: some View { 

        Form { 

        } 

    } 

} 
```
### **Tarefa 2: criar o TextField**

Em seguida, o senhor adicionou um TextField ao ReservationForm. Esse TextField exibe a string **Type Your Name** como espaço reservado e usa uma variável de controle chamada customerName.
```Swift
struct ReservationForm: View { 

    @State var customerName:String = "" 

    var body: some View { 
        Form { 
            TextField("Type Your Name", 
                      text:$customerName) 
        } 
    }
} 
```
### **Tarefa 3: Detectar quando o** TextField **muda**

O senhor adicionou um modificador ao TextField que detecta alterações e as imprime no console.
```Swift
struct ReservationForm: View { 

    @State var customerName:String = "" 

    var body: some View { 

        Form { 

            TextField("Type Your Name", 

                      text:$customerName) 

            .onChange(of: customerName, 

                      perform: {newValue in 

                print(newValue) 

            }) 

        } 

    } 

} 
```
### **Tarefa 4: Detectar quando o usuário pressiona RETURN**

O senhor adicionou um modificador ao elemento TextField que detecta quando o usuário pressiona RETURN.
```Swift
struct ReservationForm: View { 

    @State var customerName:String = "" 

    var body: some View { 

        Form {

            TextField("Type Your Name", text:$customerName) 

                .onChange(of: customerName, perform: { newValue in 

                    print(newValue) 

                 }) 

                .onSubmit({ 

                     print("submitted") 

                })

        }

        .padding() 

    }

} 
```
### **Tarefa 5: Detectar quando o TextField inicia e termina a edição**

Por fim, o senhor modificou o elemento TextField para detectar quando o usuário inicia ou termina a edição.
```Swift
struct ReservationForm: View { 

    @State var customerName:String = "" 

    var body: some View {  

       TextField("Type Your Name", 

                  text:$customerName, 

                  onEditingChanged: { status in 

            print(status) 

        }) 

        .onSubmit({ 

            print("submitted") 

        }) 

        .onChange(of: customerName, perform: { newValue in 

            print(newValue) 

        }) 

        .padding() 

    } 

}
```