
Nesta leitura, você aprenderá a facilitar o desenvolvimento da interface do usuário usando a tela SwiftUI do Xcode. O senhor será capaz de explicar os três modos da tela de visualização e por que usar cada um deles. Também aprenderá a adicionar um elemento de interface de usuário à sua visualização. Por fim, aprenderá a definir os dados usados para exibir a visualização da visualização.

O senhor explorará o canvas criando uma visualização simples para o usuário definir o número de pessoas para uma reserva no restaurante Little Lemon.

Comece criando um novo projeto no Xcode. Selecione App como o tipo e iOS como a plataforma. Clique em Next e digite **Reservations** como o nome do projeto. Selecione um tipo de interface como SwiftUI e uma linguagem como Swift. Desmarque as caixas de seleção Core Data e Include Tests, se estiverem selecionadas. Por fim, salve o projeto.

O editor do Xcode deve mostrar dois painéis, um editor com o código SwiftUI para a visualização e uma visualização dessa visualização. Também pode haver o painel Navigator e Inspectors em ambos os lados do editor e do Canvas. Para fechar o painel Navigator, selecione View > Navigators > Hide Navigator. Para fechar o Inspector, selecione View > Inspectors > Hide Inspector.

A visualização é exibida em uma exibição chamada Canvas, que faz parte do editor do Xcode para SwiftUI. Observe que pode levar algum tempo para que a visualização inicial seja exibida.

Às vezes, a tela exibe **Preview pausado**. Clique no botão de atualização ao lado das palavras para iniciar a visualização. Se a tela não for exibida, selecione Editor > Canvas na barra de menus.

A janela do Xcode será parecida com a seguinte:

![Hello world view e área de código](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Z_M5luyHQy2k_qg993CcbQ_eb43096fa31c4056a2eff0351d6535e1_C5M1L1-Image-1.png?expiry=1762905600000&hmac=RkNJV0Cz-hzLFYxLVHHAk60WLuaMSXvgPfM324-lZ_Q)

A tela exibe o destino de execução atual do seu aplicativo. Na captura de tela, trata-se de um iPhone SE (3ª geração). Para selecionar um dispositivo diferente, clique no destino na barra de ferramentas do Xcode e escolha um novo dispositivo.

## Adição do código de reserva

Agora o senhor adicionará o código para alterar o número de pessoas e exibir o valor atual. Você aprenderá sobre as exibições que está usando à medida que avança neste módulo.

Substitua o código do site ContentView pelo seguinte:
```Swift
import SwiftUI

struct ContentView: View {

    @State var personCount: Int = 1

    var body: some View {

        VStack {
            Text("Little Lemon")
            Stepper {
            Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
## Visualizar a UI

Depois de atualizar o código, a tela exibe a nova visualização:

![Número de pessoas para a visualização da reserva](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0IwrLE5BQl-jIFo3gqrTgw_7770e6a82d0742b39d5fdec0f89c23e1_C5M1L1-Image-2.png?expiry=1762905600000&hmac=2yAqASm8kTePeo1DJCifAkNrxu9wx2w6p77SkQrSTo8)

Selecione o botão de reprodução redonda na parte inferior da tela. Isso ativa o modo Live, que é usado para interagir com o aplicativo. Clique no botão de adição do stepper e a contagem de reservas aumenta em um.

O modo Live é uma maneira rápida de experimentar o comportamento de diferentes layouts e elementos da interface do usuário em vez de criar e executar o aplicativo em um simulador ou dispositivo.

## Editar a UI

Agora, clique no botão ao lado do modo Live, que é uma seta em uma caixa quadrada. A tela agora está no modo Selecionável.

Clique novamente no stepper. Desta vez, o quadro da visualização do stepper aparece na tela. Ele também está selecionado no código.

Às vezes, é útil ver todos os quadros de visualização, especialmente ao tentar depurar um problema de layout. Para ver todos os quadros, selecione Editor > Canvas > Show View Bounds. Os limites são mostrados em uma cor cinza claro.

Também é possível adicionar e alterar elementos da interface do usuário no modo Selecionável.

Para adicionar uma visualização com a palavra **Reservas** abaixo de Little Lemon, primeiro abra a janela Library. Para isso, clique no botão Library (+) que fica ao lado do botão Hide and Show Inspectors (Ocultar e mostrar inspetores) na barra de ferramentas. Depois que a janela Library for aberta, exiba a biblioteca Views selecionando o botão que parece um quadrado com um ponto, se ele ainda não estiver destacado. Encontre a visualização Text e arraste-a para a tela abaixo de Little Lemon. Observe que o senhor só pode arrastar as visualizações para a tela quando ela estiver no modo Selecionável. O senhor pode arrastar elementos para o código em qualquer modo.

![Visualização de texto com área de código](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/FrsvKaDJSmm1Hatpn0w7nw_74521b916d564d6e8ee1b086231b9be1_C5M1L1-Image-3.png?expiry=1762905600000&hmac=VMNBw0HTTPLxcgpITUbVkvCEhBNVJ2ECNTejH6YFetU)

A nova visualização de texto aparece abaixo da visualização do texto Little Lemon. Além disso, o código da nova visualização é adicionado no editor de texto. Use o editor de código para alterar o texto para **Reservas**.

## Verifique as diferentes variações da UI

O botão ao lado de Selectable (Selecionável) seleciona o modo Variants (Variantes).

Clicar no botão Variants mostra um menu de opções para as diferentes variações:

- O esquema de cores exibe sua visualização nos modos claro e escuro
    
- A orientação mostra os dispositivos em cada rotação suportada
    
- O tipo dinâmico mostra dispositivos com tamanhos variados de fonte
    

Clique em uma das variações para focar nesse dispositivo.

Use variações para garantir que o layout da sua visualização tenha boa aparência para todos os usuários.

## Alteração dos dados exibidos

O modo Live sempre começa mostrando uma reserva para 1. Mas, e se o senhor quisesse um padrão diferente?

O senhor pode definir os valores padrão para qualquer uma das variáveis de uma visualização. Esses valores são usados em todos os três modos de tela: Live, Selectable e Variants.

Na parte inferior do editor de conteúdo, a visualização é uma estrutura chamada ContentView_Previews. Esse é o código usado pela tela para mostrar sua visualização. Altere o código para o seguinte:
```Swift
struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView(personCount: 10)
    }
}
```
A tela é atualizada para mostrar uma contagem de reservas de 10. O novo código que o senhor inseriu define o valor inicial da variável personCount, que o canvas usa para exibir o número atual de pessoas para a reserva.

A combinação do editor e do canvas no Xcode torna a edição das exibições muito mais fácil de gerenciar. Agora, o senhor pode explicar os modos Live, Preview e Variants do canvas e por que usar cada um deles. O senhor conhece duas maneiras de adicionar um elemento de interface do usuário à sua visualização. Por fim, o senhor sabe como definir os dados usados para exibir a visualização da visualização na tela.