## **Constantes**


								            PONTOS FORTES

> **- Imutabilidade**: Uma vez que você define uma constante, seu valor não pode ser alterado. Isso ajuda a evitar erros acidentais, pois você sabe que aquele valor permanecerá o mesmo durante a execução do programa.

> **- Clareza**: Usar constantes pode tornar o código mais fácil de entender, pois indica que um valor é fixo e não mudará, o que pode ser útil para valores que não devem ser alterados, como a data de um evento..


									           PONTOS FRACOS

> **- Rigidez**: Se você precisar de um valor que pode mudar, usar uma constante pode ser limitante. Você terá que criar uma nova constante se precisar de um valor diferente.

> **- Uso excessivo**: Em alguns casos, usar muitas constantes pode tornar o código mais complicado, especialmente se você precisar de muitos valores que mudam.


## **Variáveis**

**Interatividade em Aplicativos**

- Aplicativos interativos proporcionam uma melhor experiência ao usuário, permitindo que eles se sintam compreendidos e atendidos.
- A gestão eficaz das entradas do usuário é essencial para o sucesso do aplicativo.

**Declaração de Variáveis em Swift**

- As variáveis são criadas com a palavra-chave `var`, seguida pelo nome da variável, um sinal de igual e o valor.
- Swift oferece tipos de variáveis como `int` para números inteiros e `string`para textos.

**Exibição de Variáveis**

- A função `print` é utilizada para mostrar variáveis na tela.
- É possível combinar strings usando o sinal de mais (+) para criar mensagens mais complexas.

										    PONTOS FORTES 

> **- Flexibilidade:** As variáveis permitem que você armazene valores que podem mudar ao longo do tempo, como a temperatura em um aplicativo de clima. Isso é essencial para situações onde os dados precisam ser atualizados.

> **- Dinamismo**: Com variáveis, você pode criar programas mais dinâmicos que respondem a diferentes condições e entradas do usuário.


									        PONTOS FRACOS 

> **- Erros potenciais**: Como as variáveis podem ser alteradas, isso pode levar a erros se não forem gerenciadas corretamente. Por exemplo, se você esquecer que uma variável foi alterada, pode causar comportamentos inesperados no seu programa.

> **- Complexidade**: O uso excessivo de variáveis pode tornar o código mais difícil de seguir, especialmente se os valores mudarem frequentemente


```swift
let day = "Segunda-Feira"

let dayliTemperature = 75
print("Hoje é \\(day). Vá em frente meu brother!")
print("A Temperatura na \\(day) é \\(dayliTemperature)Fº")

var temperature = 70
print("A Temperatura na manhã de \\(day) é \\(dayliTemperature)Fº")

temperature = 80
print("A Temperatura na noite de \\(day) é \\(temperature)Fº")

let wekleyTemperature = 75

temperature = wekleyTemperature

print("A temperatura média desta semana é \\(temperature)Fº")

```

### `SAIDA NO CONSOLE ⬇️`

```swift
// Hoje é Segunda-Feira. Vá em frente meu brother!
// A Temperatura na Segunda-Feira é 75Fº
// A Temperatura na manhã de Segunda-Feira é 75Fº
// A Temperatura na noite de Segunda-Feira é 80Fº
// A temperatura média desta semana é 75Fº
```

> Dica: Agora você deve ter duas constantes diferentes, uma com um valor de cadeia de caracteres e a outra com um número inteiro. Você deve se lembrar de que o valor de uma constante nunca pode mudar. Seus valores só podem ser definidos uma vez.