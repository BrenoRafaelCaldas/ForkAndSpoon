

- Crie um novo projeto no Xcode chamado "video_player".
- Adicione um arquivo de vídeo mp4 ao módulo do projeto.

Configuração do ViewController

- Crie uma função de substituição no arquivo ViewController.
- Adicione as instruções de importação necessárias no início do arquivo.

Implementação da Função de Reprodução

- Crie uma função privada chamada playVideo para localizar e reproduzir o vídeo.
- Utilize o AVPlayer e AVPlayerViewController para gerenciar a reprodução do vídeo.

Execução do Aplicativo

- Chame a função playVideo no método viewDidAppear.
- Execute o aplicativo em um simulador ou dispositivo físico para verificar a funcionalidade do reprodutor de vídeo.



```Swift 

// ViewController.swift

// video_player

  

import UIKit

import AVKit

import AVFoundation

  

class ViewController: UIViewController {

  

override func viewDidLoad() {

super.viewDidLoad()

// Do any additional setup after loading the view.

}

override func viewDidAppear(_ animated: Bool) {

super.viewDidAppear(animated)

playVideo()

}

private func playVideo(){

guard let path=Bundle.main.path(forResource: "test", ofType:"mp4") else {

debugPrint("test.mp4 not found")

return

}

let player = AVPlayer(url: URL(fileURLWithPath: path))

let playerController = AVPlayerViewController()

playerController.player=player

present(playerController, animated: true) {

player.play()

}

}

}


```