

- A função `bundle.main.path` é usada para identificar recursos, como arquivos de vídeo, por localização ou nome.
- O vídeo é adicionado ao projeto no Xcode, arrastando e soltando o arquivo na pasta do projeto.

Verificando Recursos no Xcode

- É importante confirmar que o vídeo adicionado será exportado ao implantar o aplicativo, verificando a aba "Copy Bundle Resources" no painel de alvos do Xcode.
- Se o vídeo não estiver listado, você pode adicioná-lo manualmente.

Acessando o Vídeo no Código Swift

- No arquivo View Controller, você deve criar uma função para localizar o vídeo, utilizando a palavra-chave `guard` para verificar a validade do caminho do arquivo.
- O nome do recurso deve ser alterado para corresponder ao nome do vídeo adicionado.