
- A navegação deve ser clara e direta, permitindo que os usuários façam escolhas lógicas.
- Um app que exige muitas instruções para ser usado pode ser considerado um fracasso, pois os usuários esperam simplicidade.

Tipos de Navegação no Swift UI

- Navegação plana: todas as visualizações derivam de uma única tela, como em um navegador com várias abas.
- Navegação hierárquica: uma única visualização apresenta opções de navegação, permitindo que o usuário navegue entre páginas.

Implementação de Navegação no Swift UI

- Navegação plana é criada usando o controle TabView, onde cada aba representa uma visualização.
- Navegação hierárquica é implementada com NavigationView e NavigationLink, permitindo que o usuário acesse novas visualizações ao tocar em elementos.


Tabela de Navegação

| Tipo                  | Descrição                                                                                                                                                                                 |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Navegação             | A ação de apresentar uma série de telas e painéis que devem ser mostrados em uma ordem lógica.                                                                                            |
| Navegação Plana       | Todos os views que o usuário pode navegar derivam de um único ponto. Exemplo: navegador com várias abas.                                                                                  |
| Navegação Hierárquica | Exibe uma única view que contém múltiplas opções de navegação, permitindo que o usuário navegue para frente e para trás. Exemplo: lista de produtos que mostra detalhes em uma nova view. |
| TabView               | Controle usado para criar navegação plana, onde cada aba representa uma view diferente.                                                                                                   |
| NavigationView        | Usado para criar um sistema de navegação hierárquica em Swift UI.                                                                                                                         |
| NavigationLink        | Elemento especial que é clicável, semelhante a um botão, que permite a navegação para outra view.                               



```Swift
import SwiftUI

struct Navigation: View {

    var body: some View {

        NavigationView(){

            NavigationLink(destination:
                Image("LettleLemon")){

                Text("Bistro Menu")
                    .font(.title)
            }
                .navigationTitle("Lettle Lemon Menu")
        }
    }
}
  

#Preview {
   Navigation()
}
```


```Swift
  
import SwiftUI

struct Navigation: View {

    var body: some View {

        NavigationView(){
           NavigationLink(destination:
            EmptyView()) {
                VStack {
                    Image("LettleLemon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(40)

                    Text("FAÇA UMA RESERVA!")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundStyle(Color.primary)
                        .padding(28)

                }
            }
            .navigationTitle("Lettle Lemon")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
} 

#Preview {
    Navigation()
}
```


Navegação Plana

- A navegação plana, também conhecida como navegação por abas, permite que todas as visualizações derivem de uma única visualização.
- O TabView é um componente que alterna entre várias visualizações filhas usando elementos de interface do usuário interativos.

Exemplo de Implementação

- O exemplo apresentado utiliza um TabView com duas abas: "Home" e "Menu", cada uma apresentando uma visualização personalizada.
- Cada aba é definida com um elemento de texto e um modificador chamado tabItem, que inclui um rótulo e um ícone.

Funcionalidades Adicionais

- As visualizações exibidas ao selecionar uma aba podem ser personalizadas, incluindo elementos como listas, formulários ou até mesmo visualizações com navegação hierárquica.
- O TabView também pode incluir badges, que são pequenos círculos vermelhos com números, alertando os usuários sobre elementos específicos.


---


Vamos falar sobre o `forEach` em SwiftUI, que é uma ferramenta poderosa para iterar sobre coleções, como arrays. O `forEach` permite que você execute um bloco de código para cada item em uma coleção, o que é muito útil quando você deseja criar múltiplas visualizações a partir de um conjunto de dados.

Imagine que você tem uma caixa de lápis de várias cores. Se você quiser mostrar cada lápis em uma mesa, você pode usar o `forEach` para pegar cada lápis da caixa e colocá-lo na mesa um por um. No código, isso se parece com algo assim:
```Swift
let cores = ["vermelho", "verde", "azul"]

ForEach(cores, id: \.self) { cor in
    Text("Lápis de cor: \(cor)")
}
```
Aqui, `cores` é um array que contém os nomes das cores. O `ForEach` percorre cada cor e cria um texto para cada uma delas. O `id: \.self` é usado para identificar cada item de forma única, o que é importante para que o SwiftUI possa gerenciar as visualizações de forma eficiente.

Se você tiver mais perguntas sobre o `forEach` ou qualquer outro conceito, sinta-se à vontade para perguntar! Estou aqui para ajudar você a entender melhor.

E se você quiser continuar explorando este tópico, tente uma destas perguntas complementares: