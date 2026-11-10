>  O wrapper de propriedade @State é geralmente usado dentro de uma visualização (ou struct) e com tipos de dados simples. Normalmente, um struct não permite que seus valores sejam modificados, portanto, marcar a variável com o wrapper de propriedade @State diz ao SwiftUI para mover seu armazenamento para fora do struct e para o armazenamento compartilhado gerenciado pelo SwiftUI. 


- As variáveis em SwiftUI são criadas para armazenar valores que podem ser exibidos e atualizados na interface.
- O uso de `@State` permite que a interface reaja a mudanças nas variáveis, facilitando a atualização automática de elementos visuais.

**Interação com Elementos de Interface**

- Um exemplo prático é a aplicação do restaurante Little Lemon, que calcula descontos para novos usuários usando `TextField` para entrada de dados e `Text` para exibição de resultados.
- Para passar valores entre diferentes views, utiliza-se o `@Binding`, que conecta variáveis entre views, permitindo que mudanças em uma reflitam na outra.

**Uso de Classes e Observação**

- Para classes, utiliza-se `ObservableObject` e `@ObservedObject` para permitir que a interface reaja a mudanças em propriedades de classes.
- Isso possibilita a criação de um modelo que se conecta a elementos da interface, garantindo que as atualizações sejam refletidas automaticamente.

---

Nesta leitura, o senhor conhecerá os elementos da SwiftUI: ObservableObject, ObservedObject, State e Binding. Esses elementos trabalham juntos para criar variáveis que se comunicam por meio de classes e visualizações.

## O que são esses elementos?

ObservableObjectos elementos ObservedObject, State e Binding são conhecidos como wrappers de propriedade e são usados com elementos de interface para controlar a exibição de dados.

Vamos começar com State e Binding.

## Como usar State e Binding

State os elementos State e Binding funcionam em pares, dentro das visualizações do SwiftUI, na forma @State e @Binding.

Todas as visualizações do SwiftUI são estruturas, também conhecidas como structs. Uma vez inicializados, os structs não permitem que suas variáveis internas sejam alteradas. Os elementos @State removem essa restrição, permitindo que as variáveis sejam armazenadas fora da própria estrutura em uma área que pode ser alterada. Além disso, eles servem como variáveis de controle.

@Bindingo elemento @Binding, por outro lado, é usado para criar variáveis que recebem valores das variáveis @State e estão conectadas a elas de forma que qualquer alteração em uma variável alterará a variável @State vinculada.

## Como eles se parecem na prática?

@State e @Binding são usados quando o senhor precisa passar uma variável para outra visualização.

Suponha que o senhor tenha uma visualização chamada ContentView e outra chamada LittleLemonLogoque contém o logotipo do restaurante Little Lemon. O senhor deseja criar alguma funcionalidade em ContentView que controle a visibilidade do logotipo.

ContentView a função que o senhor deseja criar será parecida com a seguinte:
```Swift
struct ContentView: View {

    @State var showLogo = true

    var body: some View {
        VStack {
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
        }
    }
}
```
Uma variável booleana chamada showLogo é criada na **linha 2**, como uma variável de controle do tipo @State.

showLogo **a va** riável booleana LittleLemonLogo na linha 5 controla a visibilidade do logotipo e é passada para a visualização como uma variável de controle na **linha 6**. Observe o cifrão que precede o nome da variável $showLogo.

A visualização LittleLemonLogo será configurada da seguinte forma:
``` Swift

struct LittleLemonLogo: View {

    @Binding var bindingVariable:Bool

    var body: some View {

        VStack {
            Image("littleLemonLogo")
            Button(action: {
                bindingVariable.toggle()
            }, label: {
                Text("Toggle Logo Visibility") 
                  .font(.title2)
            })
        }
    }
}
```
Uma variável booleana chamada bindingVariable do tipo @Binding é criada na **linha 1**. Essa variável receberá o estado da variável showLogo de ContentView e estará vinculada a ela, o que significa que qualquer alteração em bindingVariable alterará showLogo.

A imagem do logotipo é adicionada na **linha 5**.

O botão alterna o estado de bindingVariable na **linha 7**.

Quando o botão for tocado, o logotipo desaparecerá.

## Vamos falar sobre ObservableObject e ObservedObject

@State o ObservableObject e o @Binding funcionam nas exibições do SwiftUI, que são puramente structs, mas o que acontece se o senhor quiser ter uma variável de controle em uma classe?

@ObservableObject para ajudar!

Vamos usar o mesmo exemplo anterior do controle de visibilidade do logotipo Little Lemon.

Para criar uma variável de controle dentro de uma classe, o senhor precisa criá-la da seguinte forma:
```Swift
class MyClass:ObservableObject { 

    @Published var showLogo = true

}
```
Esse código cria uma classe chamada MyClass que é um objeto observável, contendo uma variável booleana showLogo marcada como @Published, o que significa que suas alterações serão notificadas àqueles que a observarem.

Em seguida, ContentView deve ser construído da seguinte forma:
```Swift
struct ContentView: View {

    @ObservedObject var myClass = MyClass()

    var body: some View {
        VStack {
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
        }
    }
}
```

**A linha 1** cria uma instância de MyClass chamada myClass e a marca como um objeto observável. myClass controla a visibilidade do logotipo na **linha 2** e é passada para a visualização LittleLemonLogo na **linha 6**.

A visualização LittleLemonLogo pode ser construída da seguinte forma:
```Swift
struct LittleLemonLogo: View {

    var myClass:MyClass

    var body: some View {
        VStack {
            Image("littleLemonLogo") 
            Button(action: {
                myClass.showLogo.toggle()
            }, label: {
                Text("Toggle Logo Visibility OFF")
                    .font(.title2)
            })
        }
    }
} 
```

A linha na **linha 2** cria uma variável chamada myClass para armazenar a instância de MyClass recebida de ContentView.

O botão alterna o estado da variável showLogo dentro de myClass na **linha 7**.