//
//  Loja1.swift
//  Reservations
//
//  Created by B7 RAFA on 25/11/2025.
//

import SwiftUI

struct LojasView: View {
        
    let unidades: [LojaItem] = [
        
        LojaItem(nome: "Vila Nova de Gaia",
                 endereco: "Rua do Viso 22",
                 imagem: "mappin.and.ellipse.circle.fill"),
        
        LojaItem(nome: "Matosinhos",
                 endereco: "Avenida da Repulblica 244",
                 imagem: "mappin.and.ellipse.circle.fill"),
        
        LojaItem(nome: "Porto Centro",
                 endereco: "Avenida Gustavo Eiffel 272",
                 imagem: "mappin.and.ellipse.circle.fill"),
        
        LojaItem(nome: "Server do Vouga",
                 endereco: "Rua da Rocochina 63",
                 imagem: "mappin.and.ellipse.circle.fill"),
        
        LojaItem(nome: "Algarve",
                 endereco: "Estrada de Benagil 10",
                 imagem: "mappin.and.ellipse.circle.fill")
    ]
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                ForEach(unidades) { unidade in
                    LojaCardView(loja: unidade)
                }
            }

        }
        .padding(.top, 7)
        .padding(.bottom, 90)

    }
}

#Preview {
    LojasView()
}
