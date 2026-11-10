**Sistema de Camadas do SwiftUI**

- O SwiftUI utiliza um sistema de camadas que permite criar layouts e animações complexas.
- O modificador `frame` é usado para manipular visualizações, encapsulando-as em uma nova visualização transparente.

**Processo de Layout**

- O layout envolve três etapas: o pai oferece um tamanho ao filho, o filho determina o tamanho necessário e o pai organiza o filho respeitando esse tamanho.
- O corpo da visualização retorna uma única visualização, mas múltiplas visualizações podem ser combinadas usando pilhas.

**Instrumentos de Layout**

- As pilhas (`HStack`, `VStack`, `ZStack`) são fundamentais para alinhar visualizações.
- `Spacers` e `padding` são utilizados para posicionar objetos, com `padding`permitindo controle preciso sobre o alinhamento e a posição das visualizações.

|**Elemento**|**Descrição**|**Exemplo de Uso**|
|---|---|---|
|**HStack**|Organiza as views em uma linha horizontal.|`swift HStack { Text("Item 1") Text("Item 2") }`|
|**VStack**|Organiza as views em uma coluna vertical.|`swift VStack { Text("Item 1") Text("Item 2") }`|
|**ZStack**|Sobrepõe as views, colocando uma em cima da outra.|`swift ZStack { Image("background") Text("Texto") }`|
|**Spacer**|Cria espaço flexível entre as views, ajudando a distribuir o layout.|`swift HStack { Text("Item 1") Spacer() Text("Item 2") }`|
|**Padding**|Adiciona espaço ao redor de uma view, permitindo um controle preciso do posicionamento.|`swift Text("Texto").padding(20)`|
|**Alignment**|Alinha as views dentro de um frame ou stack.|`swift VStack(alignment: .leading) { Text("Item 1") Text("Item 2") }`|

Esses elementos são fundamentais para criar layouts em SwiftUI. Cada um deles tem seu propósito e pode ser combinado para criar interfaces de usuário atraentes e funcionais. Se precisar de mais detalhes sobre algum desses elementos ou de outros conceitos, é só me avisar!

---

# Exemplos de estruturas e layouts

Situação: Traduzido automaticamente do Inglês

Traduzido automaticamente do Inglês

## Visão geral

No vídeo anterior, o senhor aprendeu sobre as ferramentas importantes para modificar o layout da interface do usuário. Nesta leitura, o senhor verá exemplos de uso dessas ferramentas. Ao final, o senhor entenderá quando deve considerar a modificação do layout de uma visualização. O senhor também será capaz de identificar a estrutura de um elemento de visualização e explicar as diferentes ferramentas.

Para experimentar esses exemplos, crie um projeto de aplicativo SwiftUI no Xcode. Defina o destino para seu iPhone favorito e abra ContentView.swift. O código que define a visualização de conteúdo será algo parecido com isto:
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

Os exemplos a seguir usam ou modificam o código dentro do site VStack.

## Frame, a unidade básica dos layouts

Toda visualização que é exibida na tela é um retângulo. As visualizações que não parecem ser um retângulo são desenhadas em um retângulo. Esse retângulo é chamado de quadro da visualização.

No projeto Xcode que o senhor criou, defina o modo do Canvas como Selecionável (o meio dos três botões no canto inferior esquerdo). Agora, selecione a linha com `TextView` no editor de código. O Canvas exibe uma caixa ao redor do texto. Essa caixa é o quadro do `TextView`.

![Texto e imagem Hello World sem sombra](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/X-yhTGiiSxWHuXbcZbjOTQ_f790751473fc45fea647c5de1336b2a1_image-01-no-shadow.png?expiry=1763078400000&hmac=ZGF1lvG2YtJzrI0EKWlo6I5Qcd_A8_JJVRlmLhlv__o)

Selecione `VStack` e agora o retângulo envolve a imagem e `TextView`.

![Código com renderização exibindo um retângulo azul que envolve uma imagem do sistema globo e um TextView mostrando Hello, world!](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/N_YDH7VhQ3iO33oiPYNvlg_4e7c57c236c8418c88571feb7af6b7a1_image-03-no-shadow.png?expiry=1763078400000&hmac=txP3jK5i9aTf8vLSCumAkk0Htjetw762WO44X9jXbvk)

## Definição da moldura

Agora, o senhor definirá o quadro para `TextView`. Altere o código da seguinte forma:
```Swift
Text("Hello, world!") 
    .frame(width: 200, height: 50) 
```

O quadro do `Text` parece mudar na tela, mas não é isso que realmente está acontecendo.
![Código com renderização exibindo uma imagem do sistema globo acima de um retângulo que envolve um TextView mostrando Hello, world!](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/pMGy4kTKS7OSNJBoZMkw8g_8394da0a1d564c0fa77267d0f24030a1_image-02-no-shadow.png?expiry=1763078400000&hmac=Q0Ts5UwrmdocGyobz6_i5jZKGNfd7onS1BOInFbUm3g)

Defina a cor de fundo do `Text` como vermelho:
```Swift
Text("Hello, world!") 
    .background(Color.red) 
    .frame(width: 200, height: 50) 
```

O fundo vermelho é exibido somente no quadro original do `Text`.
![Código com renderização: uma imagem do sistema globo acima de um retângulo que contém um TextView mostrando Hello, world! com um fundo vermelho.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/rQlnFfooSeugUIH-A-IutQ_1df7a6b4c51b480aa845a45f6f7dc5a1_image-04-no-shadow.png?expiry=1763078400000&hmac=zvCf2g9U7eyhRCG6GFNlLYkFBD7Q47ik5dH9GxEozb0)

Agora, adicione um plano de fundo azul ao modificador `.frame()`:
```Swift
Text("Hello, world!")

    .background(Color.red)

    .frame(width: 200, height: 50)

    .background(Color.blue)
```
O modificador `.frame()` cria uma nova visualização invisível com o tamanho especificado. O `TextView` está dentro dessa nova visualização.

![Código com renderização: uma imagem do sistema globo com um TextView mostrando Hello, world! e um fundo vermelho sobre um retângulo azul preenchido](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/lRLtbSJRTRG8bxHPh22Sbg_c64ed41974c1452b8e67bf0df1c70ea1_image-05-no-shadow.png?expiry=1763078400000&hmac=G-HeKp6rPN7nwyHK0FZwsRbYUxKGJAabtn84s-wVrIU)

## quando modificar seu layout

O senhor pode estar se perguntando se todas essas exibições invisíveis podem tornar o aplicativo mais lento. A resposta básica é não. A SwiftUI é muito eficiente ao trabalhar com visualizações, incluindo as invisíveis para modificadores de visualização.

No entanto, a SwiftUI é muito boa em dispor uma interface em muitos dispositivos e plataformas diferentes. A melhor ideia é usar uma modificação somente quando ela for importante. Por exemplo, um logotipo pode precisar ter um determinado tamanho ou o senhor deseja que uma parte do aplicativo seja exibida de uma determinada maneira.

Comece sem modificações. Adicione-as quando precisar delas. Quando as adicionar, visualize-as em qualquer dispositivo em que o aplicativo seja executado.

## Organização de grupos de exibições

O senhor pode pensar na sua interface como diferentes grupos de exibições relacionadas. Por exemplo, o cronômetro no aplicativo Apple Clock tem dois grupos verticais. Na versão digital, o primeiro é um grupo horizontal que exibe a hora. Em seguida, há um grupo horizontal com um botão de volta, um controle para alternar entre as versões digital e analógica e outro botão para iniciar e parar a cronometragem.

O código com o qual o senhor tem trabalhado é um grupo vertical, um `VStack`. Para um grupo horizontal, use `HStack`. O código a seguir é um grupo horizontal de três botões.
```Swift
 HStack { 

    Button("One") {} 

    Button("Two") {} 

    Button("Three") {} 

} 
```
Remova as cores de fundo e o quadro do `Text`. Agora, adicione o `HStack` com os botões abaixo do `Text`.
![Código com renderização: uma imagem do sistema globo acima de um TextView mostrando Hello, world! acima de um HStack dentro de um retângulo](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/1cUY3UNvRbObFt-_cAoNgQ_a3ac07a1067343c1b757917b54cb78a1_image-06-no-shadow.png?expiry=1763078400000&hmac=_J-ptX5sRr8zaa7wTXwPJEOvP2yXAOajBtFtwkd1CPY)

O código atual descreve uma exibição que é agrupada na direção vertical. Ela contém três elementos: uma imagem, algum texto e um grupo horizontal de botões.

Projetar sua interface como grupos de exibições horizontais e verticais facilita o design para o SwiftUI.

## Adição de espaço

O site `Text` e os botões do site `HStack` estão muito próximos uns dos outros. Um `Spacer` adiciona espaço. O local onde esse espaço é adicionado depende da direção das exibições no grupo. Por exemplo, se o senhor adicionar um `Spacer` entre o primeiro e o segundo botões, ele adicionará espaço na direção horizontal.

Para adicionar espaço na direção vertical, adicione o `Spacer` entre o `Text` e o `HStack` com os botões:
```Swift
Text("Hello, world!") 

Spacer() 

HStack { 

    Button("One") {} 

    Button("Two") {} 

    Button("Three") {} 

} 
```
Agora os botões estão na parte inferior da tela e o `Text` está na parte superior.

## Adição de preenchimento

Às vezes, um `Spacer` adiciona muito espaço. O `Spacer` entre o `Text` e o grupo de botões empurrou os botões para a parte inferior da tela. Também moveu o `Text` e a imagem para a parte superior. Às vezes, o senhor deseja menos espaço entre as exibições. O motivo mais comum é corresponder às Diretrizes de Interface Humana da Apple para espaçamento.

Para isso, o senhor pode usar o modificador `.padding()`. Por padrão, ele adiciona a quantidade de espaço definida pelo sistema em todos os quatro lados de uma visualização. Também é possível escolher quais lados e a quantidade de espaço.

Remova o `Spacer` entre o `Text` e o grupo de botões. Agora, adicione padding ao `Text`:
```Swift
Text("Hello, world!") 

    .padding() 

HStack { 

    Button("One") {} 

    Button("Two") {} 

    Button("Three") {} 

} 
```

![Código com renderização: uma imagem do sistema globo acima de um TextView mostrando Hello, world! em um retângulo acima de um HStack](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/-f4OCB8eSA-Xhp810t_rTw_93e9ece34f8d40e0933284e7fac1d3a1_image-07-no-shadow.png?expiry=1763078400000&hmac=lVwdqmwhjA5J0gy_3EgAcwLnkTcs-dpAFatcCIXPnnQ)

Agora há o espaço recomendado entre a parte inferior da exibição `Text` e a parte superior do grupo de botões. Também há espaço entre a parte superior da exibição `Text` e a imagem.

## Alinhamento

A interface atual está centralizada na tela do iPhone. Às vezes, o senhor deseja que as exibições sejam alinhadas de maneiras diferentes.

Há duas maneiras principais de alterar o alinhamento.

A primeira usa o argumento Stack views alignment. Um `VStack` organiza suas exibições filhas verticalmente, mas as alinha na direção horizontal. Da mesma forma, um `HStack` organiza suas exibições secundárias horizontalmente, mas as alinha na direção vertical.

Altere o `VStack` para que ele alinhe os itens à sua borda principal:
``` Swift
VStack(alignment: .leading) { 
```

![Código que usa o argumento de alinhamento com render: imagem do sistema globo acima de um TextView, acima de um HStack, tudo dentro de um retângulo](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/cMu_nsubTOqeiZftepIeFg_168c83a73e5f47189ca5bc4749c035a1_image-08-no-shadow.png?expiry=1763078400000&hmac=w1Q9Z_UIid2H41RJ6OBNx8WraQ9dWOnqqj67wGOQ6XI)

Embora pareça que o texto e os botões ainda estejam centralizados, não é bem assim. Examine os quadros do `Text` e do `HStack` no Canvas. Ambos são tão largos quanto o `VStack`.

Adicione um modificador `.frame` ao `VStack` com uma largura de 300.
```Swift
struct ContentView: View { 

    var body: some View { 

        VStack(alignment: .leading) { 

            … 

        } 

        .frame(width: 300) 

    } 

} 
```
As exibições dentro do `VStack` não mudam de posição. O modificador `.frame` adicionou uma nova visualização invisível.

Agora o senhor pode tentar a segunda maneira de alterar o alinhamento. O modificador frame também recebe um argumento para o alinhamento.

Adicione um alinhamento principal ao quadro `VStack`:
```Swift
.frame(width: 300, alignment: .leading) 
```

![Código que usa um modificador .frame com renderização: imagem do sistema globo acima de um TextView, acima de um HStack, tudo dentro de um retângulo](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/tFmOv7bjT_2eDsZ6SDiRiA_b44f36325f0248749e0356e5218654a1_image-09-no-shadow.png?expiry=1763078400000&hmac=Qf5_vUoG6J-VzKkXi9RhlvYR1nW_lT_lr7Lsg1r14X8)

Há muitos tipos diferentes de alinhamento, incluindo o principal, o posterior, o superior, o central e assim por diante. Use o código que o senhor criou para experimentar os diferentes tipos. Tente usá-los nas pilhas e nos quadros. Tente adicionar quadros com diferentes alinhamentos.