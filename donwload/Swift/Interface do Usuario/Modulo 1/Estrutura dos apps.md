Nesta leitura, o senhor conhecerá como um aplicativo é estruturado na SwiftUI e seus principais componentes: main struct , body, WindowGroup, Scene e ContentView.

# Estrutura do aplicativo

Em termos de organização, uma estrutura de aplicativo corresponde ao comportamento do conteúdo de um aplicativo, e um aplicativo SwiftUI contém apenas uma estrutura de aplicativo principal.

Quando o senhor cria um novo projeto SwiftUI, chamado, por exemplo, **MyNewProject**, será criado um arquivo chamado **MyNewProjectApp.swift**. O conteúdo desse arquivo é exibido abaixo.
```Swift
import SwiftUI

@main

struct MyNewProject: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
```
Esse arquivo cria a estrutura principal chamada **MyNewProject**. Dentro dessa estrutura, temos uma variável chamada body que representa a cena. As linhas a seguir adicionam uma visualização chamada ContentView ao grupo Window.

Uma Scene é parte da interface de usuário de um aplicativo que é gerenciada pelo sistema, o que significa que tudo o que for definido dentro dela será exibido de uma forma que pode variar de plataforma para plataforma. O motivo é que diferentes plataformas da Apple têm outros métodos de entrada, tamanhos de tela e características de hardware.

Por exemplo, uma lista exibida como uma coluna em um iPhone pode ser exibida como duas colunas em um iPad. O sistema sempre decidirá a melhor maneira de mostrar a interface do usuário.

Um WindowGroup é uma cena que apresenta um grupo de janelas estruturadas de forma idêntica.

# O que é ContentView?

Em um novo projeto SwiftUI, ContentView será sempre a primeira visualização mostrada quando o aplicativo for iniciado.

O conteúdo do ContentView normalmente é assim:
```Swift
import SwiftUI

struct ContentView: View {

  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)

      Text("Hello, world!")
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
```
Isso criará a seguinte visualização:

![Página Hello world com um logotipo](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/eN-wKr4JRKWUY1r8PL_lEg_5ccc556422214edfa1a2d2d2b81686e1_C5M1L2-Image-1.png?expiry=1762905600000&hmac=wkiRrab0voJu_ZhWYau-eGHPXr3aqFOGnJxl97VXQLs)

A primeira parte do código é criar uma visualização chamada ContentView.
```Swift
struct ContentView: View {

  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)

      Text("Hello, world!")
    }
    .padding()
  }
}
```
Essa visualização tem o corpo principal igual a uma pilha vertical (VStack) que acomoda dois itens de cima para baixo: uma imagem do sistema mostrando um globo terrestre que é renderizado em tamanho grande e colorido com a cor de destaque tradicional do iOS (azul) e um elemento Text exibindo a string "Hello, world!".

Não se preocupe se esses elementos parecerem estranhos neste momento. O senhor aprenderá sobre eles em detalhes durante este curso. Considere apenas que eles são um elemento que adiciona uma imagem e outro que adiciona texto organizado verticalmente.

A parte final do site ContentView é exibida abaixo.
```Swift
struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }
}
```
Esse é um recurso criado exclusivamente para ajudar o Xcode a mostrar sua visualização ao vivo.

![O código de visualização e o simulador de aplicativos no Xcode](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/_puZVOXqQai_yIb-y90DJw_ce4522963c0d45b3868e59aab2b14be1_MicrosoftTeams-image-11-.png?expiry=1762905600000&hmac=Uy_k21DREaUfc-MNQWvPwqnjmluQfKO7aQK49I_XdU8)

PreviewProvider o Xcode não tem nenhuma função no aplicativo em si e não será compilado ou incluído no código final. Ele está lá para ajudar o senhor a ver como será a interface quando o aplicativo for executado. O senhor pode até mesmo remover essas linhas se não quiser que o Xcode exiba uma visualização ao vivo.

## Conclusão

Nesta leitura, o senhor foi apresentado a como um aplicativo é estruturado na SwiftUI e seus principais componentes: main struct , body, WindowGroup, Scene e ContentView.