
Um dos principais usos dos smartphones e tablets é entreter o usuário, oferecendo-lhe acesso a conteúdo de qualidade. O vídeo é uma forma fundamental de conteúdo amplamente utilizado, especialmente em tablets.

Para conseguir isso nos dispositivos Apple, o senhor pode usar um AVPlayer, que reproduz arquivos de vídeo no iOS. Continue lendo para saber mais!

## AVPlayer para reprodução de vídeo

O kit de desenvolvimento de software (SDK) do iOS inclui duas classes que tornam a implementação da reprodução de vídeo em dispositivos iOS extremamente fácil de implementar ao desenvolver aplicativos.

O AVPlayer é a maneira mais eficiente de exibir e reproduzir um vídeo em um aplicativo da Apple. Sempre que o senhor adiciona esse componente ao layout de uma atividade, ele fornece uma superfície na qual um vídeo pode ser reproduzido.

Os seguintes formatos de vídeo são atualmente compatíveis com o iOS:

- H.263
    
- H.264 AVC
    
- MPEG-4 SP
    
- VP8
    

Além da superfície para exibir um vídeo, ele tem uma grande variedade de métodos que podem ser chamados para controlar a reprodução do vídeo.

## Métodos de controle da reprodução de vídeo

Alguns dos métodos mais comumente usados para controlar a reprodução de vídeo incluem:

### **AVPlayer(url: URL(fileURLWithPath: path))**

Especifica o caminho (como um URI) da mídia de vídeo a ser reproduzida. Pode ser um URL de arquivo de vídeo remoto ou um arquivo de vídeo local no dispositivo.

### **play()**

Quando essa função é usada, ela reproduz o vídeo.

### **currentTime()**

Quando essa função é usada, ela obtém a hora atual da reprodução.

### **pause()**

Esta função pausa a reprodução do vídeo.

### **isMuted ()**

Esta função retorna um valor booleano que indica se um vídeo está sem som no momento.

### **AVPlayerViewController**

O AVPlayerViewController é a interface do usuário para controlar o vídeo. Especificamente, é uma exibição que contém controles de mídia, como "Play/Pause" (Reproduzir/Pausar), "Rewind" (Retroceder), "Fast Forward" (Avançar) e um controle deslizante de progresso. Ele sincroniza os controles com o estado do MediaPlayer. Por padrão, o AVPlayerViewController vem com um conjunto padrão de controles. Se quiser fazer alterações nele, o senhor deve implementar o AVPlayerViewController programaticamente no código Swift.