
- O reprodutor de vídeo é criado usando AVPlayer e AVPlayerViewController, que fornecem os controles de reprodução.
- Um projeto chamado "video_player" é criado no Xcode, onde um vídeo de teste é adicionado.

Implementação do Código

- O ViewController é onde o código Swift é escrito para controlar a reprodução do vídeo.
- A função `viewDidAppear`é sobrescrita para iniciar o reprodutor quando a tela aparece.

Inicialização do AVPlayer

- O caminho do vídeo é especificado usando a palavra-chave `guard` para verificar se o arquivo existe.
- O AVPlayer é inicializado e vinculado ao AVPlayerViewController para exibir a interface do usuário.

Exibição do Reprodutor

- A função `present` é utilizada para mostrar o reprodutor na tela, e a função `play` é chamada para iniciar a reprodução do vídeo.
- O resultado é um reprodutor de vídeo funcional que pode ser testado no simulador do Xcode.