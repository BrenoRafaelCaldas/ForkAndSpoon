
Combinação de Visualizações

- O vídeo explora como colocar visualizações dentro de outras visualizações, utilizando uma visualização invisível que combina outras.
- É importante entender a relação entre visualizações pai e filho e como reconhecê-las no código.

Uso de Stack Views

- Stack views, como HStack, VStack e ZStack, são utilizadas para organizar visualizações de forma eficiente.
- O uso de um VStack permite agrupar um campo de texto e um botão, aplicando padding de forma adequada.

Hierarquia de Visualizações

- A relação entre visualizações pai e filho é fundamental, onde a visualização pai aplica modificações, como padding, às suas visualizações filhas.
- É possível adicionar mais botões e ajustar o espaçamento entre eles usando propriedades específicas, facilitando a organização do layout.

| **Tópico**                      | **Descrição**                                                                             |
| ------------------------------- | ----------------------------------------------------------------------------------------- |
| **Combinação de Visualizações** | Aprender a colocar visualizações dentro de outras, utilizando uma visualização invisível. |
| **Visualizações Pai e Filho**   | Entender a relação entre visualizações pai e filho e como reconhecê-las no código.        |
| **Uso de Stack Views**          | Utilizar HStack, VStack e ZStack para organizar visualizações de forma eficiente.         |
| **VStack**                      | Agrupar visualizações como um campo de texto e um botão, aplicando padding corretamente.  |
| **Hierarquia de Visualizações** | A visualização pai aplica modificações (como padding) às suas visualizações filhas.       |
| **Adição de Botões**            | Adicionar mais botões e ajustar o espaçamento entre eles usando propriedades específicas. |

Criação de Views

- Cada view em SwiftUI é uma struct, o que a torna mais simples e rápida em comparação com classes.
- Um exemplo prático é a criação de uma view chamada "little lemon restaurant", que pode ser referenciada em outras views, como a ContentView.

Passagem de Variáveis

- É comum precisar passar variáveis entre diferentes partes da aplicação; neste caso, uma variável booleana chamada "showLogo" controla a visibilidade do logo.
- A variável é marcada com o keyword "binding" na view "little lemon restaurant" e "state" na ContentView, permitindo a modificação do valor.

Demonstração de Funcionalidade

- Um botão na interface permite alternar a visibilidade do logo, demonstrando a interatividade entre as views.
- A consistência nos nomes das variáveis é enfatizada para evitar confusões, embora nomes diferentes possam ser usados.


---


Aqui está o código completo do exercício:
```Swift
import SwiftUI

struct ParentView: View {

    var body: some View {

        HStack {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 50, height: 50)

            Text("Retangle One")
                .padding(20)
                .foregroundStyle(Color.white)
                .background(.pink)

            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 30)                
        }

    }

}

  

#Preview {
    ParentView()
}
```

**Tarefa 1: criar duas exibições**

Primeiro, o senhor configura a visualização principal como a visualização pai.
```sWIFT
Import SwiftUI

struct ParentView: View {

    var body: some View {

        HStack {

        }

    }

}
```

**tarefa 2: Criar uma nova visualização de retângulo**

Em seguida, o senhor formatou uma visualização para que ela exiba uma cor, chame a função rectangle e tenha uma cor de fundo e texto.
```swift
import SwiftUI

struct ParentView: View {

    var body: some View {

        HStack {

            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)

        }

    }

}
```

Tarefa**3: criar um novo elemento Text**

O senhor formatou um elemento Text com uma cor específica e uma cor de fundo.
```Swift
import SwiftUI

struct ParentView: View {

    var body: some View {

        HStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)

            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.yellow)
        }

    }

} 
```

**Tarefa 4: criar uma terceira nova visualização**

Por fim, o senhor criou um pequeno retângulo dentro de ParentView(). Ele também deve ser formatado com cor e tamanho.
```Swift
import SwiftUI

struct ParentView: View {

    var body: some View {

        HStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)

            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.yellow)

            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 30)
        }

    }

}
```


---

[Visualização no SwiftUI](https://developer.apple.com/documentation/widgetkit/swiftui-views)

[Criação e combinação de visualização](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views)

[Introdução a ObservedObject](https://developer.apple.com/documentation/swiftui/observedobject)

[Como usar um TextField](https://developer.apple.com/documentation/swiftui/textfield)