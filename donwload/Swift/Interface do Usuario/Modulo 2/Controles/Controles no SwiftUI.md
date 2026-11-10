https://developer.apple.com/documentation/SwiftUI/Picker

*Esses controles são essenciais para criar interfaces interativas e funcionais em seus aplicativos iOS.*

| **Tipo de Controle** | **Descrição**                                                                                     |
| -------------------- | ------------------------------------------------------------------------------------------------- |
| **Button**           | Um botão que executa uma ação quando clicado. Pode ser personalizado com texto ou imagens.        |
| **Toggle**           | Um controle que permite alternar entre dois estados (ligado/desligado). Ideal para configurações. |
| **Slider**           | Um controle deslizante que permite ao usuário selecionar um valor dentro de um intervalo.         |
| **TextField**        | Um campo de entrada de texto onde o usuário pode digitar informações.                             |
| **SecureField**      | Semelhante ao TextField, mas oculta a entrada do usuário (útil para senhas).                      |
| **Picker**           | Um controle que permite ao usuário selecionar um valor de uma lista de opções.                    |
| **SegmentedControl** | Um controle que permite selecionar uma opção entre várias, exibidas como botões segmentados.      |
| **DatePicker**       | Um controle que permite ao usuário selecionar uma data e hora.                                    |
| **Stepper**          | Um controle que permite aumentar ou diminuir um valor numérico em incrementos definidos.          |
| **ProgressView**     | Um controle que exibe o progresso de uma tarefa em andamento.                                     |

Sugestões de Tópicos Adicionais sobre Controles no SwiftUI:

- **Customização de Estilos**: Como personalizar a aparência dos controles usando modificadores.
- **Acessibilidade**: Implementação de práticas para tornar os controles acessíveis a todos os usuários.
- **Combinação de Controles**: Usar múltiplos controles juntos para criar interfaces interativas.
- **Gestos**: Implementação de gestos (como toques e arrastos) para interações mais dinâmicas.


--- 


## `Controles Comuns no SwiftUI`

### 1. **Botão (Button)**
```Swift
 Button(
       action: { // some action
       } , label: { Text("Press me")
 })
```
- **Botões**: Usam closures para executar ações, permitindo definir a aparência e a funcionalidade do botão.

### 2. **Toggle**
```Swift
   @State var isShowenig = true

    var body: some View {

        Toggle(isOn: $isShowenig) {
            Text("Notifications")
        }
        .padding()
    }
```
- **Toggle**: Permite alternar entre estados verdadeiro e falso, frequentemente usado em configurações de aplicativos.


## `Controles de Entrada e Seleção`

### 3. **Stepper**
```Swift
@State private var value = 1

   var body: some View {

        NavigationView(){

            VStack {
                Text("Current value: \(value)")
                
                Stepper("Number of guess?", value: $value, in: 1...20)
                    .padding()
                    .navigationTitle("Reservation from")
            }

        }

    }
```
- **Stepper**: Utilizado para incrementar ou decrementar valores, como o número de convidados em uma reserva.

### 4. **Slider**
```Swift

@State private var size: CGFloat = 0.1

   var body: some View {

        VStack {

            Text("Volume")

                .font(.title.bold())

            Slider(value: $size)

        }

        .padding(20)

    }
```
- **Slider**: Permite selecionar um valor em uma faixa, como o controle de volume.


## `Controles de Exibição e Progresso`

### 5. **Progress View**
```Swift
@State private var progress = 0.5

    var body: some View {

        VStack {
            ProgressView(value: progress)
            
            Button("Loanding", action: {
                progress += 0.05
            } )
            .font(.title.bold())
            .foregroundStyle(.black)

        }
        .padding()

    }
```
- **Progress View**: Indica o progresso de uma tarefa, útil para mostrar que uma página está carregando.

### 6. **Date Picker**
```Swift
    @State private var selectedDate = Date()

    var body: some View {

        DatePicker("Selecione uma data", selection: $selectedDate, displayedComponents: .date)
            .padding()

    }
```
- **Date Picker**: Facilita a seleção de datas, semelhante ao aplicativo padrão de calendário da Apple.

### 7. **Label**
```Swift
Label("Love", systemImage: "heart")
    .padding()
```
- **Label**: Combina texto e imagem, útil para rotular itens em um aplicativo.

--- 

Nesta lição, você explorará os diferentes tipos de controles disponíveis na SwiftUI e como criá-los. A SwiftUI oferece muitas maneiras de o usuário interagir com o layout de uma interface de usuário. O meio mais básico de fazer isso é por meio de controles. Os controles formam os blocos de construção das interações com os usuários e se tornam mais complexos à medida que os requisitos do seu aplicativo aumentam. Alguns dos controles mais usados incluem Button, Toggle, Stepper, Slider, ProgressView, DatePicker e Label.

Ao escrever um controle, é preciso ter em mente que ele deve permitir algum tipo de interação específica com o usuário necessária ao seu aplicativo. Cada controle é composto de uma interface do usuário e de uma configuração programática que permite personalizar ainda mais o comportamento do seu aplicativo. Lembre-se de que cada controle respectivo tem métodos para permitir a personalização, como coloração, mas isso está além do escopo deste curso.


  
```Swift
import SwiftUI

struct ReservationCalendar: View {

    @State private var selectedDate = Date()

    var body: some View {
        Form {
            HStack(spacing: 40) {
            
                DatePicker(
                    selection: $selectedDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) { }
                
                Button(action: { print("do something!") }) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }
                    .padding(16)
                    .foregroundStyle(.white)
                    .background(Color.green)
                    .cornerRadius(40)
            }
            Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
        }
    }
}

#Preview {
    ReservationCalendar()

}
```




> https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device