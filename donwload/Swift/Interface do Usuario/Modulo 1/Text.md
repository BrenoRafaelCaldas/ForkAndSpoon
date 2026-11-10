

> Os **elementos de texto** são como placas de sinalização que mostram informações. Por exemplo, se você quiser que os usuários vejam uma mensagem como "Inscreva-se agora" em seu aplicativo, você usaria um elemento de texto. Ele exibe essa mensagem de forma clara, mas não permite que os usuários a mudem. Por outro lado, os **campos de texto** são como caixas onde as pessoas podem escrever. Imagine preencher um formulário online com seu nome ou endereço; isso é feito usando um campo de texto. Ele permite que os usuários insiram informações, e essas informações podem ser armazenadas e usadas mais tarde.

## Elementos do Text

- Os elementos de texto exibem linhas de texto somente leitura na tela, como um aviso para se inscrever em uma newsletter.
- É possível estilizar o texto usando comandos específicos, como alterar a fonte, cor e tamanho, além de aplicar formatação com Markdown.

Campos de Texto

- Os campos de texto permitem a entrada de dados, como o nome do usuário ao se inscrever em uma newsletter.
- Para conectar um campo de texto a uma variável, utiliza-se a palavra-chave "state", permitindo que o valor digitado seja armazenado e atualizado automaticamente.

Diferenciação e Estilização

- A diferença entre elementos de texto e campos de texto é enfatizada, assim como a importância de estilizar e formatar o texto para melhorar a apresentação.
- O uso de strings atribuídas e a limitação de linhas são discutidos para controlar a exibição do texto em diferentes situações.


# Explorando o texto

Situação: Traduzido automaticamente do Inglês

Traduzido automaticamente do Inglês

Nesta leitura, o senhor conhecerá os elementos do SwiftUI Text. Esses elementos (exclusivos para exibir texto) permitem que o senhor crie uma variedade de resultados, desde simples cadeias de texto até textos sofisticados, coloridos e estilizados.

## O que são elementos?

Text os elementos display text têm uma sintaxe inicial como esta:
```Swift
struct ContentView: View {

    var body: some View {

        Text("Little Lemon Restaurant")
    }
}
```
Esse elemento será exibido da seguinte forma:

![Mockup de tela de celular mostrando o texto do Little Lemon Restaurant no centro da tela](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/CgAV80BCQA6Ov01idFVWGg_2bc8a520f68c49db83d3b90c20d824e1_C5M1L3-Image-1.png?expiry=1762992000000&hmac=Otm2XDO9TkjKbwfm_9t51DfWRQi36LuVyd8r8vg4f6s)

Há uma série de modificadores que o senhor pode aplicar aos elementos Text para torná-los mais interessantes. Aqui estão alguns deles:
```Swift
struct ContentView: View {

    var body: some View {

        Text("Little Lemon Restaurant")
            .font(.title)
            .foregroundColor(.gray)
            .padding()
            .background(Color.black)

    }

} 
```
Esses modificadores serão aplicados de cima para baixo.

O primeiro é .font. Ele aplica uma predefinição de título para o tamanho da fonte. Se o senhor digitar: .font(. e pressionar ESC, o Xcode mostrará uma lista de predefinições:

![Lista de predefinições do Xcode](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/9wt_zP-MSPiESRNe0IUZNQ_b7d1e41e5cf7471591048a1951a0bbe1_C5M1L3-Image-2.png?expiry=1762992000000&hmac=J2Xvt2_9YQd6ROknx_pDESLYZ4lyHnNy3LjodB3IG8I)

O segundo modificador altera a cor do primeiro plano, ou seja, a cor do texto, para cinza. Novamente, se o senhor digitar: .foregroundColor(. e pressionar ESC, o Xcode mostrará uma visualização das predefinições de cores:

![Visualização de predefinições de cores](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/uE_1buA5TI6E9FfuVvqsXg_2a7375640b814e68bdfc9d8bf7b006e1_C5M1L3-Image-3.png?expiry=1762992000000&hmac=zB2eV9QnC2obI2sUQsbCmhJfG6p4ebAh-oMbZsAEApw)

O próximo modificador é .padding. Isso aplicará uma borda ao redor do elemento Text. Como nenhum parâmetro é passado para o padding, o espaço padrão será de 15 pontos.

O senhor pode especificar um valor de espaçamento:
```Swift
.padding(30)
```
O padding tem formas mais sofisticadas, como para um padding de 20 pontos à frente e atrás ou na parte superior e inferior:
```Swift
.padding([.leading, .trailing], 20)

.padding([.top, .bottom], 20)
```
Ou apenas para um padding de 20 pontos no topo:
```Swift
.padding(.top, 20)
```
Ou um tipo de força mais bruta, que permite que o senhor especifique tudo..:
```Swift
.padding(.init(top: 40, leading: 20, bottom: 10, trailing: 20))
```
O modificador final altera a cor de fundo do texto para preto.

O resultado final é o seguinte:

![Imagem da cor de fundo preta para o texto](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/kbEInsy6QcmCLRTDCDEuoA_69e18cfdd1dd42768a27ef28f4cd81e1_C5M1L3-Image-4.png?expiry=1762992000000&hmac=mbh_YBMy2EzH2mFG6Wqvm2rCCW9sZS6_F1XFyFOkPaU)

## Mas o que é exatamente o plano de fundo do texto?

Na SwiftUI, tudo o que é exibido na tela é uma visualização, inclusive o texto. Quando um texto é criado, ele é colocado dentro de uma visualização invisível. Ao colori-la de preto, o senhor pode vê-la.

Mas lembre-se do que foi mencionado anteriormente: que os modificadores são executados na ordem em que são digitados no código. Os quatro modificadores que o senhor aplicou alteraram o tamanho da fonte, sua cor, adicionaram preenchimento ao redor dela e coloriram o fundo de preto, e o resultado foi:

![Título do Little Lemon Restaurant](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/m8WjP-AgSSy6gh4JQ1q2tA_b21b8eceaced4ae7a4c014a70cd229e1_C5M1L3-Image-5.png?expiry=1762992000000&hmac=NJL5BxZwDEb_32qGQs8a0XtuskmLi-xMN4KOPdK4Gu0)

Mas o que acontece se o senhor inverter a ordem dos dois últimos modificadores, assim?
```Swift
struct ContentView: View {

    var body: some View {

        Text("Little Lemon Restaurant")
            .font(.title)
            .foregroundColor(.gray)
            .background(Color.black)
            .padding()
            
    }

} 
```
Bem, o resultado será o seguinte:

![Título Little Lemon sem preenchimento](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0RwzSFW2T96XVrFCSjNIhg_9e5d239e7ba8414d8a418c21fa1164e1_image.png?expiry=1762992000000&hmac=Ro73EFDFE5bu2NfOpD0La7aZKLYr4CwcOUfUgs9Nblg)

Agora o senhor mudará o tamanho da fonte e sua cor, o plano de fundo para preto e, em seguida, aplicará o preenchimento. Portanto, não há mais preenchimento entre o texto e o plano de fundo, e é por isso que o plano de fundo e o texto agora têm o mesmo tamanho. Além disso, o senhor não consegue mais ver o preenchimento porque ele está invisível fora do plano de fundo, mas o que acontece se o senhor adicionar um segundo modificador de plano de fundo como este?
```Swift
struct ContentView: View {

    var body: some View {

        Text("Little Lemon Restaurant")
            .font(.title)
            .foregroundColor(.gray)
            .background(Color.black)
            .padding()
            .background(Color.gray)

    }

} 
```
Este é o resultado:

![Título do restaurante Little Lemon com preenchimento](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/ZeSeDiXVTJ-LcCrGwrwhPw_c76e7fcb11394671939126b45eb8c7e1_image.png?expiry=1762992000000&hmac=sHCIoi2hnPdHs1fNKPqzgML3Muhi5RG_A2vweVyq59s)

Agora o senhor pode ver o preenchimento e o preenchimento criou outra caixa ao redor dele!

Outra coisa a se pensar é a diferença entre os dois modificadores:
```Swift
.foregroundColor(.gray)

.background(Color.black)
```
Observe que a cor de primeiro plano solicita uma cor e o plano de fundo solicita uma visualização. É por isso que, no primeiro comando, o senhor simplesmente digitou .gray e, no segundo, teve de digitar Color.black. Color.black é uma visualização cuja cor é preta.

## Truncando ou não

Text os elementos do Swift sempre tentarão se expandir para exibir todo o texto. Se o texto for longo, o SwiftUI o dividirá em várias linhas.

Para evitar que um elemento Text se expanda, o senhor pode usar esse modificador:
```Swift
.fixedSize(horizontal: false, vertical: true)
```
horizontal é um valor booleano que indica se a largura da exibição deve ser fixada.

vertical é um valor booleano que indica se a altura da visualização deve ser fixada.

## Formulários

Como um tópico especial para esta leitura, devemos mencionar os formulários. Um **formulário** no SwiftUI é uma visualização de contêiner que permite agrupar controles como Text, TextFields, DatePickers e outros usados para entrada de dados.

Para adicionar um formulário, o senhor pode usar o seguinte:
```Swift
Form {

}
```
## Rótulos

Label é outra maneira de exibir texto, juntamente com um ícone, na SwiftUI. Os ícones exibidos por um Label são do conjunto chamado **San Francisco Symbols**, ou **SF Symbols**, que é um pacote de mais de 4.000 ícones gratuitos fornecidos pela Apple.

Falaremos sobre o SF Symbols mais adiante neste curso. Por enquanto, tudo o que o senhor precisa saber é que um Label usa a seguinte sintaxe:
```Swift
Label("Lightning", systemImage: "bolt.fill")
```