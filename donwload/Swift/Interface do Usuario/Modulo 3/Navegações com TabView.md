O conteúdo aborda o conceito de navegação plana utilizando o TabView no SwiftUI, que é essencial para criar interfaces limpas em dispositivos com telas pequenas, como iPhones e iPads.

Um **TabView** no SwiftUI é um componente que permite a navegação entre diferentes visualizações (ou "views") em um aplicativo. Ele é especialmente útil para criar interfaces de usuário que precisam apresentar várias seções de conteúdo de forma organizada e acessível. Aqui estão alguns pontos-chave sobre o TabView:

- **Navegação por Abas**: O TabView permite que os usuários alternem entre diferentes visualizações, cada uma representada por uma aba. Isso é ideal para aplicativos que têm várias seções, como "Home", "Menu", "Configurações", etc.
    
- **Interatividade**: Cada aba pode conter diferentes tipos de conteúdo, como textos, imagens, listas ou formulários, e os usuários podem interagir com esses elementos.
    
- **Modificadores**: O TabView utiliza o modificador `tabItem` para definir o rótulo e o ícone de cada aba, facilitando a identificação das seções.
    
- **Exibição de Conteúdo**: Quando uma aba é selecionada, o conteúdo correspondente é exibido, permitindo que os usuários naveguem facilmente entre as diferentes partes do aplicativo.

Navegação Plana

- A navegação plana, também conhecida como navegação por abas, permite que todas as visualizações derivem de uma única visualização.
- O TabView é um componente que alterna entre várias visualizações filhas usando elementos de interface do usuário interativos.

Exemplo de Implementação

- O exemplo apresentado utiliza um TabView com duas abas: "Home" e "Menu", cada uma apresentando uma visualização personalizada.
- Cada aba é definida com um elemento de texto e um modificador chamado tabItem, que inclui um rótulo e um ícone.

Funcionalidades Adicionais

- As visualizações exibidas ao selecionar uma aba podem ser personalizadas, incluindo elementos como listas, formulários ou até mesmo visualizações hierárquicas.
- O TabView também pode incluir badges, que são pequenos círculos vermelhos com números, alertando os usuários sobre elementos específicos.

Conclusão

- Compreender como implementar a navegação plana com TabView no SwiftUI capacita os desenvolvedores a criar aplicativos mais complexos e bonitos com múltiplas visualizações de forma eficiente.

---


Um exemplo simples de uma `TabView`com 3 itens( Home, Chat e Settings) :
```Swift
import SwiftUI

struct TabView1: View {

    var body: some View {

        TabView {

            Text("HOME")
                .tabItem{ Label("Settings", systemImage: "house.fill") }

            Text("CHAT")

                .tabItem{ Label("Settings", systemImage: "ellipsis.message.fill" ) }

                .badge(38)

            Text("SETTINGS")

                .tabItem{ Label("Settings", systemImage: "gearshape.fill" ) }

        }

    }

}

  
#Preview {
    TabView1()
}
```

Observe que após passar o `TabView` voce adiciona um item que pode ser um Text(Tambem pode passar Image e outras views) e logo abaixo seguinto por um ponto vem o `.tabItem`com uma label que pede uma string e pode passar uma imagem do sistema como no exemplo.
 
 A seguir um exemplo passando outras views(Imagens(), ReservationForm(),  ReservationCalendar()) que sao passadas com ajuda do `@State`: 
```SWIFT
import SwiftUI

struct TabView1: View {

    @State var home = Imagens()
    @State var chat = ReservationForm()
    @State var settings = ReservationCalendar()

    var body: some View {
    
        TabView {
        
            Imagens()
                .tabItem{ Label("Home", systemImage: "house.fill") }

            ReservationForm()
                .tabItem{ Label("Chat", systemImage: "ellipsis.message.fill" ) }

                .badge(38)
            ReservationCalendar()
                .tabItem{ Label("Settings", systemImage: "gearshape.fill" ) }
        }
    }
}

#Preview {
    TabView1()
}
```

Observe quem em vez de passar um Text foi passado uma `Outra view` com ajuda do `@State` eu crio uma variavel que traz essa `Outra view` pro codigo atual.

---
##  Outro Cenário

No seu aplicativo Little Lemon Reservations, o senhor terá de navegar por várias páginas. Cada página contribuirá para o seu aplicativo de várias maneiras diferentes, desde o transporte de dados até o aprimoramento das experiências do usuário. Neste exercício, o senhor aprenderá a navegar entre várias páginas em um aplicativo básico.

### **Tarefa 1: Criar o formulário**

Nesta tarefa, o senhor criará um novo projeto que funcionará como seu formulário, com um título memorável.

- Etapa**1:** no Xcode, selecione um novo projeto SwiftUI em User Interface e clique em **Next**.
    
- Etapa**2:** Dê ao projeto um título memorável e continue.
    

### **Tarefa 2: criar um formulário** NavigationLink

Nesta tarefa, o senhor adicionará um NavigationView e um NavigationLink a ContentView.

- Etapa**1:** Adicione um NavigationView a ContentView.
    
- Etapa**2:** Adicione uma pilha vertical ao NavigationView.
    
- Etapa**3:** Adicione um elemento Text à pilha vertical que contém a string **Exercício 1**.
    
- Etapa**4:** adicione um NavigationLink após o elemento Text, exibindo a string **Do something (Faça alguma coisa**) e abrindo uma exibição chamada **NewView** quando tocada.
    
- Etapa**5:** Altere o título da barra de navegação para **Little Lemon**.
    

![Captura de tela do aplicativo Little Lemon com o Exercício 1, Do something in centered text](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/UQtEjktAQHugRmYD90HJJw_ca7c1112bc494b268f38b8c057e815e1_image.png?expiry=1764015308447&hmac=vK5rNXoOxsiJoWgRIfd8Ic5XbTWb5bDoFbYs9i2AkiY)

### **Tarefa 3:** TabView **e** Labels

Nesta tarefa, o senhor criará um TabView que permite ao usuário navegar entre duas guias.

- Etapa**1:** Com ContentView selecionado no Project Navigator, selecione **File** > **New** > **File**.
    
- Etapa**2:** Escolha **Select SwiftUI View** em User Interface e selecione **Next**.
    
- Etapa**3:** Dê a ela o nome de MyTabView e clique em **Next**.
    
- Etapa**4:** Uma nova visualização chamada MyTabView será criada em um arquivo diferente e adicionada ao projeto.
    
- Etapa**5:** Adicione um VStack ao elemento body.
    
- Etapa**6:** Adicione um TabView ao VStack que contém dois tabItems.
    
- Etapa**7:** Os itens da guia devem mostrar as sequências de caracteres **This is the Share View** e **This is the Trash View**, respectivamente.
    
- Etapa**8:** Adicione Labels contendo SF Symbols ao tabItems, para representar **share** e **trash**. Não há necessidade de adicionar a palavra **"trash"** ao **ícone da lix**eira.
    

**Dica:** Os rótulos usam ícones do conjunto SF Symbols.

Isso é o que deve ser exibido quando a guia Share for selecionada.

![Visualização de compartilhamento na interface do usuário (IU)](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/ovwACV4DTmyLKDGR_2oHQg_f7c6b3c77ef54c968583a53494d60ee1_Screen-Shot-2022-11-25-at-11.31.41.png?expiry=1764015308447&hmac=cJxx4gPhuY50g9y6XGm4ILGtLfqCccSOTQu5gBgWlrU)

- **Etapa 8:** Quando o senhor clicar no ícone **da** lixeira, deverá aparecer o texto **Trash Tab (Guia Lixeira** ).
    

![Visualização da lixeira na interface do usuário (IU)](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/5bKJCUOuQ4Wymc8YCUeSRw_46ce385b5f444306a3d55f4ab56f3de1_Screen-Shot-2022-11-25-at-11.31.50.png?expiry=1764015308447&hmac=x_Rp_GU4AtQXs6vG8bLWQibSsuX5q0CtbWYYJaiGpQ4)


Aqui está a solução completa para o Navega:
```Swift
import SwiftUI

struct Navega: View {

    var body: some View {

        NavigationView() {

            VStack {
                Text("Exercicio 1")
                    .font(.title)

                NavigationLink("Do something", destination: MyTabView())
                    .navigationTitle("Lettle Lemon")
            }
        }
    }
}

  
#Preview {
    Navega()
}
```

Aqui está a solução completa para o MyTabView:
```Swift
import SwiftUI

struct MyTabView: View {

    var body: some View {

        VStack {

            TabView {

                Text("This is the Share View")

                    .tabItem {

                        Label("Share", systemImage: "square.and.arrow.up")

                    }

                Text("This is the Trash View")

                    .tabItem {

                        Label("", systemImage: "trash.fill")

                    }

            }

        }

    }

}

  

#Preview {

    MyTabView()

}
```

--- 

- Uma biblioteca com mais de 4.000 símbolos, projetada para se integrar perfeitamente à San Francisco, a fonte do sistema para plataformas Apple: [SF Symbols](https://developer.apple.com/sf-symbols/)
