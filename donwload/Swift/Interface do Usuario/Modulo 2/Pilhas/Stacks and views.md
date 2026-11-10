
**Stacks em SwiftUI**

- **V Stack (Vertical Stack)**: Alinha elementos de cima para baixo. Possui propriedades de alinhamento (leading, center, trailing) e espaçamento, que determina a margem entre os elementos.
- **H Stack (Horizontal Stack)**: Alinha elementos da esquerda para a direita. Utiliza propriedades de alinhamento (top, bottom, center, first text baseline, last text baseline) e também possui espaçamento.
- **Z Stack (Depth Stack)**: Permite sobrepor elementos, organizando-os de trás para frente. Tem uma propriedade de alinhamento, mas não de espaçamento.

**Combinação de Stacks**

- A combinação de V, H e Z stacks permite criar visualizações complexas de forma eficiente. Um exemplo é um Z stack que contém um H stack, que por sua vez contém um V stack, demonstrando a flexibilidade na construção de interfaces.

|**Elemento**|**Descrição**|
|---|---|
|`.leading`|Alinha o elemento à esquerda da tela.|
|`.center`|Alinha o elemento no centro da tela.|
|`.trailing`|Alinha o elemento à direita da tela.|
|`.top`|Alinha o elemento na parte superior da tela.|
|`.bottom`|Alinha o elemento na parte inferior da tela.|
|`.firstTextBaseline`|Alinha o elemento à linha de base do primeiro texto.|
|`.lastTextBaseline`|Alinha o elemento à linha de base do último texto.|
|`.topLeading`|Alinha o elemento no canto superior esquerdo.|
|`.topTrailing`|Alinha o elemento no canto superior direito.|
|`.bottomLeading`|Alinha o elemento no canto inferior esquerdo.|
|`.bottomTrailing`|Alinha o elemento no canto inferior direito.|

Esses elementos de alinhamento ajudam a organizar e posicionar os componentes da interface de forma eficaz em SwiftUI.

Tipos de Pilhas

- As pilhas podem ser verticais (VStack), horizontais (HStack) ou empilhadas (ZStack), permitindo organizar elementos de diferentes maneiras.
- O VStack pode conter até 10 elementos, e se você precisar adicionar mais, deve agrupá-los em pacotes de 10.

Modificadores de Pilhas

- Modificadores como cor de fundo e dimensões podem ser aplicados às pilhas, mas elas só ocupam o espaço necessário para exibir os elementos.
- O alinhamento e o espaçamento podem ser configurados para controlar a disposição dos elementos dentro da pilha.

Exemplo de Uso

- Um exemplo prático mostra como adicionar uma imagem e um texto em uma ZStack, onde o texto pode ser modificado para afetar todos os elementos dentro da pilha.