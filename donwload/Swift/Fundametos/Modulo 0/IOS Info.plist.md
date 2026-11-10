
Configurações do info.plist

- O info.plist armazena informações sobre o aplicativo, como orientações permitidas e configurações de privacidade.
- É gerado automaticamente ao criar um novo projeto no Xcode e contém chaves, valores e tipos que definem comportamentos e opções de configuração.

Exemplo de uso do info.plist

- Para usar a câmera, é necessário especificar uma configuração de privacidade no info.plist, solicitando permissão ao usuário antes de acessar a câmera.
- O mesmo se aplica ao acesso à lista de contatos, onde a permissão do usuário deve ser solicitada.

Outras configurações disponíveis

- Além das configurações de privacidade, o info.plist permite definir o identificador do pacote, nome e versão do pacote, ajudando a identificar a versão do aplicativo.
- A falta de especificações adequadas no info.plist pode resultar na rejeição do aplicativo pela Apple.