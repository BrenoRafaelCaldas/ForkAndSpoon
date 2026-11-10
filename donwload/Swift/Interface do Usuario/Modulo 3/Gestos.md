
## Gestos Básicos

- Um gesto é um elemento que pode ser anexado a uma visualização para detectar interações como toques, cliques e deslizamentos.
- O gesto de toque é o mais simples, permitindo que ações sejam executadas, como imprimir uma mensagem quando um texto é tocado.

Gestos Avançados

- O gesto de longa pressão permite que os usuários realizem ações após pressionar um elemento por um período prolongado, com a possibilidade de definir a duração mínima.
- O gesto de arrastar permite mover elementos na tela, utilizando uma variável de estado para controlar a posição do elemento.

Gestos Personalizados

- SwiftUI também suporta gestos mais complexos, como gestos de magnificação e rotação, além de gestos sequenciais, simultâneos e exclusivos.
- Você pode criar gestos personalizados e definir sua precedência, aumentando a flexibilidade na interação do usuário

|**Gesto**|**Descrição**|
|---|---|
|**Tap Gesture**|Detecta um toque simples em um elemento.|
|**Double Tap Gesture**|Detecta dois toques rápidos em um elemento.|
|**Long Press Gesture**|Detecta um toque prolongado em um elemento, permitindo ações como editar ou excluir.|
|**Drag Gesture**|Permite arrastar um elemento na tela, alterando sua posição com base na movimentação do dedo.|
|**Magnification Gesture**|Reconhece movimentos de aumento, permitindo que o usuário amplie ou reduza o tamanho de um elemento.|
|**Rotation Gesture**|Detecta movimentos de rotação, permitindo que o usuário gire um elemento na tela.|
|**Sequence Gesture**|Combina dois gestos em uma sequência, onde ambos devem ser realizados em ordem.|
|**Simultaneous Gesture**|Permite que dois gestos ocorram ao mesmo tempo, sem que um impeça o outro.|
|**Exclusive Gesture**|Consiste em dois gestos, onde apenas um pode ser reconhecido em um determinado momento.|

Esses gestos são fundamentais para criar interações ricas e responsivas em seus aplicativos SwiftUI. Se precisar de mais detalhes sobre algum gesto específico, sinta-se à vontade para perguntar!

--- 


## onTapGesture

`onTapGesture` é o mais básico dos gestos e serve para detectar toques nas exibições.

Para usá-lo, digite uma sintaxe como esta:
```Swift
struct ContentView: View {

  var body: some View {

    Text("Little Lemon Restaurant").onTapGesture {        

        print("Text Tapped!")      

    }

  }

}
```

Esse gesto detecta toques únicos no elemento `Text` e imprimirá `Text Tapped!` no console do Xcode assim que o toque for detectado.

Se quiser detectar vários toques, o senhor pode usar uma variação desse comando:
```Swift
struct ContentView: View {

  var body: some View {

    Text("Little Lemon Restaurant").onTapGesture(count:2) {        

        print("Text Tapped!")      

    }

  }

}
```
Esse código detectará toques duplos em uma exibição.

## onLongPressGesture

`onLongPressGesture` é outro dos gestos da SwiftUI e permite que o senhor detecte pressionamentos longos.

A sintaxe padrão detecta pressionamentos longos de 0,5 segundo em uma exibição, o que significa que o usuário deve manter um único dedo tocando a exibição por, pelo menos, meio segundo, para que o toque seja detectado.
```Swift
struct ContentView: View {

  var body: some View {

    Text("Little Lemon Restaurant").onLongPressGesture {        

        print("Long Press Detected!")      

    }

  }

}
```
Assim que o toque longo for detectado, a mensagem `Long Press Detected!`* será impressa no console do XCode.

### **variações de onLongPressGesture**

`onLongPressGesture` tem outros parâmetros que podem ser usados para ajustar o que o senhor considera um toque longo.

A sintaxe é a seguinte:
```Swift
struct ContentView: View {

    var body: some View {

        Text("Little Lemon Restaurant")

            .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {

                print("Long Press Detected!")

            }, 

            onPressingChanged: { state in

                print (state)

            })

    }

}
```
`minimumDuration` - A duração mínima do toque longo que deve transcorrer para que o gesto seja bem-sucedido. Neste exemplo, os pressionamentos longos serão detectados se o usuário tocar a exibição com um dedo por pelo menos 4 segundos.

`maximumDistance` - A distância máxima que os dedos ou o cursor que executam o pressionamento longo podem se mover antes que o gesto falhe. Nesse caso, esse parâmetro foi ajustado para 15, o que significa que o dedo ou o cursor (em um Mac ou iPad, se o usuário estiver usando um mouse) pode se mover 15 pontos em qualquer direção e o toque longo ainda será detectado.

`Perform` - A ação a ser executada quando um toque longo for reconhecido. Essa closure não recebe nenhum valor.

`onPressingChanged` - Uma closure a ser executada quando o estado de pressionamento do gesto for alterado, passando o estado atual como parâmetro. State é uma variável booleana que será verdadeira, assim que um dedo tocar ou um clique do mouse acontecer, e falsa, assim que o próprio gesto de pressão longa for detectado.

## DragGesture()

O `DragGesture` é outro gesto que pode ser aplicado às exibições. Esse gesto é um pouco mais complexo porque requer uma variável que controle a posição da visualização.

A sintaxe é a seguinte:
``` Swift
struct ContentView: View {

    @State private var offsetValue = CGSize.zero

    var body: some View {

        Image("littleLemonLogo")

        .offset(offsetValue)

            .gesture(

                DragGesture()

                    .onChanged { gesture in

                        offsetValue = gesture.translation

                    }

            )

    }

}
```
Esse código funciona da seguinte forma: um `DragGesture`, na linha 7, é anexado à imagem do logotipo da Little Lemon, na linha 4. `offsetValue` a variável CGSize , inicializada com CGSize igual a zero na linha 2, armazena o deslocamento da imagem. O modificador de deslocamento na linha 5 é o que realmente move a exibição.

O fechamento `onChanged` na linha 8 é o que faz toda a mágica. Assim que o gesto de arrastar está em andamento, o fechamento recebe continuamente o gesto relativo e, a partir dele, é extraída a translação, que é armazenada em `offsetValue`, linha 9.

## RotationGesture (Gesto de rotação)

Outro dos gestos mais usados é o `RotationGesture`.

Como o próprio nome diz, ele detecta rotações em uma visualização e sua sintaxe é a seguinte:
```Swift
struct ContentView: View {

    @State private var amount = Angle.zero

    @State private var finalAmount = Angle.zero

    var body: some View {

        Image("littleLemonLogo")

            .rotationEffect(amount + finalAmount)

            .gesture(

                RotationGesture()

                    .onChanged { value in

                        amount = value

                    }

                    .onEnded { value in

                        finalAmount += amount

                        amount = .zero

                    }

            )

    }

}
```
Esse código funciona da seguinte forma: duas variáveis são definidas, amount, na linha 2, e `finalAmount`, na linha 3. Essas variáveis armazenam a quantidade relativa de rotação, ou seja, quanta rotação foi aplicada a uma visualização em um momento e a quantidade total de rotação aplicada a uma visualização, somando todas as rotações que ocorreram enquanto o aplicativo era iniciado, respectivamente.

O modificador `rotationEffect` (linha 6) é o que rotaciona o logotipo do Little Lemon Restaurant, na linha 5.

`RotationGestur` o modificador onEnd é aplicado ao logotipo, na linha 8, e tem dois fechamentos: `onChanged` (linha 9) e onEnded (linha 12).

`onChanged` é acionado continuamente enquanto o gesto de rotação está em andamento e recebe um valor que corresponde à rotação relativa. Esse valor é armazenado na variável amount na linha 10.

`onEnded` é acionado quando o `RotationGesture` termina (linha 12). Quando esse fechamento é executado, o código adiciona o valor a `finalAmount` e define o valor como zero.

## MagnificationGesture (gesto de ampliação)

Esse código permite que o senhor use o gesto de pinça para ampliar as exibições e sua sintaxe é a seguinte:
```Swift
struct ContentView: View {

    @State private var amount = 0.0 

    @State private var finalAmount = 1.0 

    var body: some View {

        Image("littleLemonRestaurant") 

            .scaleEffect(finalAmount + amount) 

            .gesture( 

        MagnificationGesture()

                    .onChanged { value in 

                        amount = value – 1

                    }

                    .onEnded { value in

                        finalAmount += amount

                        amount = 0

                    }

            )

    }

}
```
Esse código funciona de forma semelhante ao `RotationGesture`.

Duas variáveis são definidas, amount, na linha 2, e `finalAmount`, na linha 3. Essas variáveis armazenam a quantidade relativa de ampliação, ou seja, quanta ampliação foi aplicada a uma visualização em um momento e a quantidade total de ampliação aplicada a uma visualização, somando todas as ampliações que ocorreram enquanto o aplicativo era iniciado, respectivamente.

O modificador `scaleEffect` (linha 8) é o que amplia o logotipo do Little Lemon Restaurant, na linha 7.

`MagnificationGesture` é aplicado ao logotipo, na linha 10, e tem dois fechamentos: `onChanged` (linha 11) e `onEnded` (linha 14).

`onChanged` é acionado continuamente enquanto o gesto de ampliação está em andamento e recebe um valor que corresponde à ampliação relativa. Esse valor é armazenado na variável amount na linha 12. Esse valor é subtraído de 1 para obter a ampliação relativa, pois 1 é a escala normal

`onEnded` é acionado quando o site `MagnificationGesture` termina (linha 14). Quando esse fechamento é executado, o código adiciona o valor a `finalAmount` e define o valor como zero.

Existem outros gestos mais sofisticados que estão fora do escopo deste curso, mas que é útil conhecer, como

## Sequenciado

O SwiftUI permite que o senhor crie gestos que são sequências de outros gestos, permitindo que execute ações somente quando dois gestos ocorrem em uma determinada ordem.

O código a seguir mostra como adicionar dois gestos, um `LongPress` e um `DragGesture`, que ocorrem em sequência. A visualização da imagem aguarda o pressionamento longo antes de processar o arrasto.
``` Swift
struct ContentView: View {

    @State private var message = "You can long press and then drag"

    var body: some View {

        let longPress = LongPressGesture()

            .onEnded { _ in

            print("Long Press detected. Now you can drag me")

            }

        let drag = DragGesture()

            .onChanged{ _ in

                print ("Dragging…")

            }

        let sequence = longPress.sequenced(before: drag)

        Image("littleLemonLogo")

        .gesture(sequence)

    }

}
```
**Observação:** Para maior clareza, não adicionamos a parte que move a imagem, mas se o senhor arrastar a imagem, depois de pressioná-la longamente, verá a mensagem "Dragging..." impressa no console do Xcode.

Há outros gestos mais avançados que podem ser usados e que estão fora do escopo deste curso:

- `SimultaneousGesture` contém dois gestos que podem ocorrer ao mesmo tempo, sendo que nenhum deles precede o outro.
    
- `ExclusiveGesture` é um gesto que consiste em dois gestos em que apenas um deles pode ser bem-sucedido.