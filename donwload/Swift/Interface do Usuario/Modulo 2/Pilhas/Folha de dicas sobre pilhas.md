

Nesta lição, o senhor explorará os três tipos diferentes de visualizações de pilha: HStack VStack ZStack o senhor será capaz de identificar a direção do layout das exibições secundárias de cada pilha. O senhor explorará diferentes maneiras de alinhar as exibições secundárias de uma pilha. E, por fim, aprenderá diferentes maneiras de criar espaço entre as exibições secundárias de uma pilha.

O SwiftUI oferece muitas maneiras de especificar o layout da interface do usuário. Uma das mais comuns é usar as três visualizações de pilha invisíveis: HStack VStack ZStack sua interface pode usar várias dessas pilhas, algumas como visualizações filhas dentro de outras pilhas.

As três coisas mais comuns que o senhor precisa saber são:

- A direção do layout dos filhos da pilha
    
- Como alterar o alinhamento das exibições na pilha
    
- Como alterar o espaçamento das exibições na pilha
    
O senhor pode usar o código abaixo para fazer experiências com diferentes alterações. Todas as alterações são exibidas no Xcode Canvas do seu aplicativo SwiftUI. O senhor pode desfazer qualquer um de seus experimentos substituindo o endereço ContentView pelo código:
```Swift
import SwiftUI

struct ContentView: View {

    var body: some View {

        ZStack {

            Circle()

                .foregroundColor(Color.gray)

            Circle()

                .scale(x: 0.75, y: 0.75)

                .foregroundColor(Color.red)

            VStack {

                Image(systemName: "globe")

                    .imageScale(.large)

                    .foregroundColor(.accentColor)

                Text ("Hello, world!")

                HStack {

                    Button("One"){}

                    Button("Two"){}

                }

            }

        }

    }

}
```
## Direção do layout

Cada pilha apresenta exibições em apenas uma direção.

Use o código fornecido para alterar a ordem das exibições secundárias em cada tipo de pilha.

### HStack

Exibição horizontal das exibições secundárias, da primeira para a última.

### VStack

Exibição vertical das exibições secundárias, de cima para baixo.

### ZStack

Exibição espacial de exibições secundárias que as empilha de baixo para cima. As exibições secundárias que estão mais altas na pilha são exibidas sobre as secundárias mais baixas.

## Alterar o alinhamento

Há duas maneiras comuns de alterar o alinhamento das exibições secundárias da pilha.

### **Argumento de alinhamento opcional**

Primeiro, o senhor pode usar o argumento opcional alignment para uma exibição de pilha. O valor padrão é o alinhamento central. Por exemplo, este código cria um ZStack com alinhamento à esquerda:
```Swift
ZStack(alignment: .leading) 
```
O senhor só pode alterar o alinhamento ao longo de um eixo com esse argumento. O eixo depende da exibição da pilha.

Use o código fornecido para experimentar a adição do parâmetro alignment às diferentes visualizações de pilha. Experimente diferentes alinhamentos.

#### **HStack**

Alinha os filhos da exibição ao longo do eixo vertical: superior, inferior ou central.

Ele também pode alinhar elementos à linha de base do primeiro item de texto ou do último item de texto. Normalmente, o alinhamento da linha de base é usado para dar uma boa aparência a grupos de texto ou para alinhar controles.

#### VStack e ZStack

Alinham os elementos filhos da visualização ao longo do eixo horizontal: à frente, atrás ou no centro.

### .frame() modificador

Às vezes, o alinhamento de uma pilha não move as exibições para a posição que o senhor deseja.

Quando isso acontecer, adicione o alinhamento desejado em um modificador .frame() para a pilha. Talvez o senhor precise adicionar um tamanho.

O senhor pode querer dar a uma visualização secundária um alinhamento diferente. Para fazer isso, adicione um modificador .frame() ao filho. Em seguida, adicione o alinhamento desejado. Por fim, defina o tamanho máximo do quadro na direção do alinhamento como infinito. Por exemplo, para alinhar uma exibição secundária à borda principal, o senhor define o alinhamento como principal e a largura máxima como infinito.

Uma observação de cautela: uma altura ou largura máxima de infinito ocupa o máximo de espaço permitido pelo pai. Às vezes, é necessário adicionar um quadro ao pai para redimensionar a exibição filha.

Use o código fornecido para experimentar a adição de quadros a pilhas e a exibições individuais. Faça experiências com diferentes valores de alinhamento.

#### HStack child

Esse modificador de quadro alinha um filho de um HStack ao topo:
```Swift
.frame(maxHeight: .infinity, alignment: .top) 
```
#### VStack child

Esse modificador de quadro alinha um filho de um VStack à borda posterior:
```Swift
.frame(maxWidth: .infinity, alignment: .trailing)
```
## **Alterar o espaçamento**

Há três maneiras de alterar o espaçamento ao usar exibições de pilha: um argumento para a pilha (exceto para ZStack), usando exibições Spacer e usando preenchimento.

Use o código fornecido para experimentar a colocação de exibições Spacer em diferentes locais da hierarquia de exibições.

### HStack e VStack

Ambas as pilhas incluem um argumento opcional spacing. Use-o para adicionar espaço entre cada par de exibições filhas. Ele não adiciona espaço antes da primeira exibição nem depois da última.

Este código define o espaço entre as duas exibições Button como 20
```Swift
HStack(spacing: 20) {

    Button("One"){}

    Button("Two"){}

}
```
### Espaçador

Uma visualização que se expande para ocupar o máximo possível do espaço disponível. É comumente usada para criar um layout, pois não depende do dispositivo.

Esse código empurra a visualização Text para a parte superior da tela e as visualizações Button em HStack para a parte inferior:
```Swift
VStack {

    Text ("Hello, world!")

    Spacer()

    HStack() {

        Button("One"){}

        Button("Two"){}

    }

}
```
### Preenchimento

Adicione um modificador .padding() para adicionar espaço ao redor de uma visualização. O padrão é adicionar o espaço definido pelo sistema a cada um dos quatro lados da visualização. O senhor também pode escolher quais lados e a quantidade de preenchimento.

Esse código adiciona preenchimento a uma visualização Text:
```Swift
Text ("Hello, world!")

    .padding()
```
Use o código fornecido para experimentar a adição de preenchimento a exibições de pilha e exibições individuais.


---


Aqui está o código da solução completa para o arquivo `MainView.swift`:
```Swift
import SwiftUI

struct MainView: View {
var body: some View {

	NavigationView {

		VStack {

		ZStack {

		HStack(spacing: 8) {
			Text("Demo").scaledToFit().frame(
width: 100, height: 100, alignment: .center)

VStack(spacing: 10) {

Text("Little Lemon").font(.title)

Text("Tomato Tortellini, Bottarga and Carbonara ").font(.title3)

.multilineTextAlignment(.center)

}// :- VStack

.padding()

} // :- HStack

.padding()

} // :- ZStack

}

}

}

}
```
O senhor começou este exercício criando um novo projeto chamado **Lemon App View Exercise**.

### **Tarefa 1:** Criar uma nova visualização SwiftUI chamada MainView

O senhor criou uma nova visualização chamada MainView para o seu projeto.
```Swift
struct MainView: View { 
    var body: some View {  
    } 
} 
```
### Tarefa**2: Adicionar um** ZStack **ao seu projeto**

Em seguida, o senhor criará uma série de exibições para o seu plano de fundo e modificará o plano de fundo configurando um ZStack.
```Swift
struct MainView: View { 
    var body: some View { 
        ZStack { 
        } 
    } 
} 
```
### **Tarefa 3:** Adicionar um HStack dentro do ZStack à sua visualização

O senhor criou um HStack em seu VStack com algum texto que é dimensionado e tem dimensões específicas.
```Swift
struct MainView: View {

    var body: some View {

        ZStack {

            Color.green.opacity(0.5).ignoresSafeArea()  //to ignore safe area

            HStack(spacing: 8) {

                Text("Demo").scaledToFit().frame(width: 100, height: 100, alignment: .center)

            }  // :- HStack

            .padding()

        }  // :- ZStack

    }

}
```
### **Tarefa 4: Adicionar um VStack dentro do HStack à visualização**

Por fim, o senhor adicionou outro VStack, desta vez dentro do HStack recém-criado, garantindo que ele exiba uma string e tenha o espaçamento apropriado aplicado.
```Swift
struct MainView: View {     

    var body: some View { 

                ZStack { 

                    Color.green.opacity(0.5) 

                        .ignoresSafeArea() //to ignore safe area 

                    HStack(spacing: 8) { 

                        Text("Demo") 

                            .scaledToFit() 

                            .frame(width: 100, height: 100, alignment: .center) 

                        VStack(spacing: 10) { 

                            Text("Little Lemon") 

                                .font(.title) 

                            Text("Tomato Tortellini, Bottarga and Carbonara") 

                                .font(.title3) 

                                .multilineTextAlignment(.center) 

                        } 

                        // :- VStack 

                        .padding() 

                    } // :- HStack 

                    .padding() 

                } // :- ZStack

    }

}
```


Os recursos a seguir serão úteis como referências adicionais para lidar com diferentes conceitos relacionados aos tópicos abordados nesta seção.

- Saiba como criar uma visualização mais complexa e envolvente usando todos os elementos que você aprendeu durante este módulo e muito mais com esta leitura: [Criação de layouts com visualizações de pilha](https://developer.apple.com/documentation/swiftui/building-layouts-with-stack-views)
    
- Adicione imagens e símbolos à interface de usuário do seu aplicativo: https:[//developer.apple.com/documentation/swiftui/images](https://developer.apple.com/documentation/swiftui/images)
    
- Ajustar imagens no espaço disponível: [https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space](https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space)