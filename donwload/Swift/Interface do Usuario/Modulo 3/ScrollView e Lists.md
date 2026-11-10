
Diferenças entre `ScrollViews` e `Lists`

- `ScrollViews` exibem elementos com pouca formatação, enquanto `Lists` utilizam um formato específico definido pela Apple.
- Ambos permitem rolagem horizontal ou vertical e apresentam elementos em colunas ou linhas.

Criação de `ScrollViews` e `Lists`

- A criação de ambos é semelhante, utilizando as palavras-chave `"ScrollView"` e `"List"`.
- É possível criar `ScrollViews` e `Lists` a partir de elementos codificados manualmente ou lendo dados de `arrays`, utilizando o comando `"for each"` para iterar sobre os elementos.

Funcionalidades adicionais

- Elementos podem ser personalizados em termos de alinhamento, espaçamento, cores e fontes.
- É possível adicionar botões e links de navegação para permitir que os usuários acessem mais informações sobre cada item da lista.

| **Elemento**        | **Descrição**                                                                                                                                                          |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **ScrollView**      | Um contêiner que exibe elementos em uma única coluna ou linha, permitindo rolagem vertical ou horizontal. Ele apresenta os elementos como estão, com pouca formatação. |
| **List**            | Um contêiner que também exibe elementos em uma coluna ou linha, mas com formatação específica definida pela Apple. Permite a seleção de um ou mais itens.              |
| **Array**           | Uma estrutura que armazena uma coleção de elementos, como os nomes de sobremesas, que podem ser lidos e exibidos em um ScrollView ou List.                             |
| **For Each**        | Um comando de loop em SwiftUI que permite iterar sobre os elementos de um array e exibi-los em sequência dentro de um ScrollView ou List.                              |
| **Navigation Link** | Um elemento que permite a navegação hierárquica, permitindo que os usuários cliquem em um item para ver mais detalhes sobre ele.                                       |

---

# ScrollView e List em detalhes

Nesta leitura, o senhor aprenderá a criar `Lists` e `ScrollViews`, dois dos elementos mais importantes da SwiftUI, que permitem exibir dados estáticos codificados no código e dados dinâmicos de arrays ou bancos de dados.
## Semelhanças

Como o senhor viu anteriormente neste curso, `ScrollViews` e `Lists` têm sintaxes muito semelhantes.

Ambos os elementos, `ScrollViews` e `Lists`, são roláveis, o que significa que podem conter qualquer número de elementos, mas há uma ressalva ao lidar com elementos codificados. O senhor aprenderá sobre isso mais adiante nesta leitura.

## Elementos de codificação rígida

`ScrollView` e `Lists` permitem a codificação de elementos diretamente neles.
```Swift
ScrollView { 

    Image("littleLemonLogo") 
    
    Image("littleLemonLogo") 
    
    Image("littleLemonLogo") 
    
    Image("littleLemonLogo") 
    
} 
```

```Swift
List { 

    Image("littleLemonLogo") 

    Image("littleLemonLogo") 

    Image("littleLemonLogo") 

    Image("littleLemonLogo") 

} 
```

Essa abordagem produzirá os seguintes resultados:
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/FSS1ZSRjRQKrc5_QXvNhbg_2c6c948418fb4f6c9b833319a33378e1_image.png?expiry=1764018677118&hmac=u8BVvxTCQb0FBxt4GhrC1liO2VQC-f67jJpX5aviWMs)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4lHFl6ycRW-5jLFurNDVVA_783107c8849247e2b6c0a11db687abe1_image.png?expiry=1764018677118&hmac=XUNcJa7ahQwneo438-vrBX6A5bbH6zC116SnozIM5v0)

O senhor pode notar, observando as imagens anteriores, que o `ScrollView` produz um visual mais rudimentar, com quase nenhuma formatação. Por outro lado, o resultado produzido pelo `List`, na figura 2, é altamente formatado. O senhor pode ver um fundo cinza para o `List`, e cada célula tem um fundo branco e separações de linha.

O problema com essa abordagem é que o código é rígido e não pode ser modificado facilmente. Toda alteração exigirá a modificação do código e a recompilação do código.

Outro problema com o uso de elementos codificados é que o senhor atingirá a limitação do SwiftUI de 10 elementos por elemento de visualização.

O código a seguir, por exemplo, não será compilado pelo Xcode, porque há onze elementos de imagem dentro do site `ScrollView` (o mesmo é válido para `Lists` ou qualquer outro elemento de visualização da SwiftUI):
```Swift
struct ContentView: View {

    var body: some View {

        List {

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")

            Image("littleLemonLogo")            

            Image("littleLemonLogo")

        }

    }

}
```

Para contornar essa limitação, o senhor terá de agrupar os elementos em pacotes de dez, por exemplo:
```swift
struct ContentView: View {

    var body: some View {

        List {
            Group{
                // add 10 images inside this group 
            }

            Group{
                // add 10 images inside this group 
            }
        }
    }
}
```
Para resolver essas limitações, a melhor abordagem é usar `ScrollViews` ou `Lists` dinâmicos em vez de codificados. Ao fazer isso, o senhor pode armazenar os elementos a serem exibidos em um arquivo CSV/JSON ou em um banco de dados CoreData e modificá-los em tempo real, sem precisar recompilar o código.

## Elementos dinâmicos

A abordagem mais básica para criar um `ScrollView` ou `List` dinâmico é armazenar os elementos em uma matriz. Essa é uma abordagem ruim para um grande número de elementos, especialmente aqueles que devem ser alterados durante a vida útil do aplicativo.

A primeira coisa que o senhor precisa fazer é criar uma matriz, por exemplo:
```Swift
    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
```
A próxima etapa lógica seria usar uma sintaxe como a seguinte, para extrair e imprimir os elementos da matriz:
```Swift
struct ContentView: View {

    let elements = ["Reservation", "Contacts", "Restaurant Locations"]

    var body: some View {

        List {
            ForEach(elements) {element in
                Text(element)
            }
        }
        .padding()
    }
}
```
No entanto, se o senhor usar isso, o Xcode mostrará o seguinte erro:

`Referencing initializer init(_:content:) on ForEach requires that String conforms to Identifiable.`

Isso acontece porque os elementos que o `ForEach` está processando não podem ser distinguidos uns dos outros. Cada elemento deve ser exclusivo, o que significa que o SwiftUI deve ser capaz de distinguir um elemento do outro.

A mensagem de erro diz que `ForEach` exige que `String` esteja em conformidade com `Identifiable`. `Identifiable` é um protocolo que torna os objetos exibidos em `List` ou `ScrollView` exclusivamente identificáveis, forçando-os a ter um campo de identificação chamado `id`.

### Solução do problema

Para resolver o problema, há várias abordagens. A primeira é criar uma extensão para String, como esta:
```Swift
extension String: Identifiable {

    public var id: String {
        self
    }
}
```
Essa extensão faz com que String esteja em conformidade com o protocolo Identifiable e adiciona uma variável chamada id a ele. Essa variável será usada para identificar de forma exclusiva cada elemento da lista.

O resultado final é mostrado na imagem abaixo:

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/S9B5T_g7RZaN0QqKV39Kyg_9635f0ce154f4863a6974b42484f38e1_image.png?expiry=1764018677118&hmac=pCnUsNpIozSvE8i8fvBYuKp1dLeMriL1le5D9VT_cqE)

Outra forma de solucionar o problema é adicionar um `id` a cada elemento em tempo real, adicionando `id:` `\.self` ao `List`:
```swift
struct ContentView: View {

    let elements = ["Reservation", "Contacts", "Restaurant Locations"]

    var body: some View {
    
        List {
            ForEach(elements, id: \.self) {element in
                Text(element)
            }
        }
        .padding()
    }
}
```
Esse código produzirá o mesmo resultado anterior e também funcionará para `ScrollViews` em vez de `Lists`.

## Como os elementos da lista ajudam o senhor

Agora o senhor sabe que `ScrollViews` e `Lists` são semelhantes. O senhor também sabe que o site `ScrollViews` produz um visual mais rudimentar, com quase nenhuma formatação, e que o site `Lists` produz uma exibição de elementos altamente formatada.

`Lists` no entanto, o site `ScrollViews` permite que o senhor vá muito além do .

### **Cabeçalho e rodapé para listas**

Se o senhor quiser adicionar cabeçalhos e rodapés a uma lista, tudo o que precisa fazer é adicionar este código:
```Swift
struct ContentView: View {

    let elements = ["Reservation", "Contacts", "Restaurant Locations"]

    var body: some View {

        List {
            Section(header: Text("Important Information")) {
                Text("This List shows information about our restaurant pages")
                    .font(.headline)
            }

            ForEach(elements, id: \.self) {element in
                Text(element)
            }
            Section(footer: Text("More Information")) {
                Text("Contact us as (212) 555 3231")
            }
        }
        .padding()
    }
}
```

Esse código produzirá o seguinte resultado:
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/y8dZvc34RROv_kXdfbnNEg_86244b3e5ee142f797298a7b3b6f27e1_image.png?expiry=1764018677118&hmac=GUgo1p5lc9WCUghxOGP8tosxRx9xLKsSPHyWUe0XGQM)

## **Livrar-se do fundo cinza da lista**

O SwiftUI renderiza listas com um fundo cinza. Se o senhor quiser se livrar desse fundo, adicione o seguinte modificador ao endereço List:
``` swift
       .scrollContentBackground(.hidden)
```

E o resultado final é o seguinte:
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Ak8E5IwjTJOrEPoXzas4oQ_ae1145c824964d85bef2369a94f894e1_image.png?expiry=1764018677118&hmac=cVZwNM-jXsUV8-rgRUBpx3qJ7REtiI04xkNZqnJi1bk)

## **Estilos de lista**

`Lists` as listas podem ser exibidas de várias maneiras, chamadas de estilos. Os estilos disponíveis são: `.automatic` ,`.grouped`, `.inset`, `.insetGrouped`, `.plain` e `.sidebar`. O senhor os utiliza aplicando um modificador ao `List`, assim: `.listStyle(.grouped)`

O resultado que o senhor vê na imagem abaixo é o padrão, equivalente a `.automatic`.

Outros estilos produzirão os seguintes resultados:
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/4mmNak_RT9q2BQz7IEjDIA_b22c7580b17740dba99d0ad0d34c41e1_image.png?expiry=1764018677118&hmac=_ElAkrxeg3vlUJSG1boYW2KdKZxwQDdcwKFkDQTvMRU)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/hBR2HGvbQu2emWzAHO_j3w_632455930cfd439f8805458fafe3f1e1_image.png?expiry=1764018677118&hmac=QuWqgcpUY-NksecSvGWXnxMmGBRVaoFjZLQi93cCLUY)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/fgRTGYQJSNuV51pnfa3JHw_9fb59dd247a145508e1c521e75eb41e1_image.png?expiry=1764018677118&hmac=9lD50nvp2Y_zMyogP7dSz1hMQ4C2NjCrw-UZLRM3OiM)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/m8gspoVsRyyOGjyiEAeLkg_34e3f9df1d764e19a7a99c69b5fb58e1_image.png?expiry=1764018677118&hmac=mg06eEjSjr3VxM7pabqgl3E7tjlmeS37PxUIauqH0JI)

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/UQ9R1Pn3SgeLqCkeh21UqA_d22fe9ddd602466c8cce8d59e21264e1_image.png?expiry=1764018677118&hmac=vVTJ6OE4w2koUKiYUhX_h91sP2qcfZD6fDugcImiVRo)

### **Elementos ajustáveis dentro de listas**

Conforme mencionado anteriormente neste curso, NavigationLinks são os elementos que o senhor deseja criar para serem tocados.

Ao adicionar o NavigationLink ao código anterior, o senhor agora tem elementos que podem ser tocados:
```Swift
struct ContentView: View {

    let elements = ["Reservation", "Contacts", "Restaurant Locations"]

    var body: some View {

        List {
            Section(header: Text("Important Information")) {
                Text("This List shows information about our restaurant pages")
                    .font(.headline)
            }

            ForEach(elements, id: \.self) {element in
                NavigationLink(destination: DetailView()) {
                    Text(element)
                }
            }

            Section(footer: Text("More Information")) {
                Text("Contact us as (212) 555 3231")
            }
        }
        .scrollContentBackground(.hidden)
        .padding()
    }
}
```

Esse código produzirá o seguinte resultado:
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2Tr6ZNqvQvu0r55U-LB4fA_e820ea66721747d4ae515013fef97ce1_image.png?expiry=1764018677118&hmac=CmOdhFtGDlHMETtUNq-N5Ec7lOKMnk2ZXiSQWqXRvQA)

Observe o chevron à direita de cada elemento da lista, indicando que esses elementos podem ser tocados.

Neste exemplo, todos os elementos, quando tocados, mostrarão a mesma visualização, `DetailView`. Adicionado aqui como exemplo ilustrativo. Em um aplicativo da vida real, seria melhor se eles mostrassem suas respectivas páginas.

---



- [Documentação on-line para desenvolvedores da Apple sobre ScrollViews](https://developer.apple.com/documentation/swiftui/scrollview)

- [Documentação on-line para desenvolvedores da Apple sobre List](https://developer.apple.com/documentation/swiftui/list)