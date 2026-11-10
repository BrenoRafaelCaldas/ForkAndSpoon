### Introdução aos Arrays 
- Arrays permitem armazenar e reorganizar coleções sequenciadas de itens.
- Cada item em um array é acessado por um índice, começando do zero.

### Criação e Acesso a Arrays
- Arrays podem ser criados usando sintaxe de literais de arrays, com valores separados por vírgulas entre colchetes.
- O tipo de dados do array pode ser declarado ou inferido pelo Swift.

### Manipulação de Arrays
- Itens podem ser adicionados, editados ou removidos usando metos como `append`, `insert` e `remove`.
- O método `Count` pode ser utilizado para contar o número de itens em um array.

Esses conceitos são fundamentais para a programação em Swift, permitindo a organização e manipulação eficiente de dados.


### Criação e manipulação de Arrays
- Crie uma matriz vazia chamada **`levelScores`** para armazenar as pontuações dos níveis do jogo.
- Utilize a propriedade **`Count`** para verificar se o jogo foi iniciado, exibindo uma mensagem de boas-vindas se a matriz estiver vázia.
- Adicione a pontuação do primeiro nível à matriz usando o método `Append()`

### Adição de Pontuação e Bônus
- Adicione um bônus à. pontuação do primeiro nível usando o operador de adição.
-  Crie uma nova matriz `freeLevelScores` para armazenar as pontuações dos níveis gratuitos e adicione-a à matriz `levelScores`.

### Verificação de Níveis Jogados

- Crie uma constante `freeLevels` para armazenar o número de níveis gratuitos.
- Use uma instrução `if` para verificar se todos os níveis gratuitos foram jogados, imprimindo uma mensagem se isso ocorrer.
- Reinicie a matriz `levelScores` e imprima uma mensagem de reinício.

```Swift

var levelScore: [Int] = [] 
if levelScore.count == 0 {
  print("Welcome to the Game! Start game!") 
}
 
let firstLevelScore = 10 
levelScore.append(firstLevelScore) 
  print("You potuation of the first level is \(firstLevelScore).") 

let levelBônusScore = 40
levelScore[0] += levelBônusScore
  print("Your new pontuation is \(levelScore[0]).") 
  
let freeLevelScore = [20, 30] 
levelScore += freeLevelScore 

let freeLevels = 3 
if levelScore.count == freeLevels { 
	print("Buy the game the play its full version")
	levelScore = [] 
	print("Game restarted!") 
}

```
#### `SAÍDA NO CONSOLE ⬇️`
``` Swift

// Welcome to the Game! Start Game!
// You pontuation of the first leve is 10.
// Your new pontuation is 50.
// Buy the game the play its full version
// Game restarted!

```

### Estrutura do Código
- O código começa com a criação de um array vazio para armazenar as pontuações dos níveis do jogo.
- Um bônus é adicionado à pontuação do primeiro nível, atualizando o valor no array.

#### Manipulação do Array

- Um novo array de pontuações é adicionado ao array existente.
- O código verifica se todos os níveis gratuitos foram jogados e, se sim, reinicia o jogo, limpando o array de pontuações.