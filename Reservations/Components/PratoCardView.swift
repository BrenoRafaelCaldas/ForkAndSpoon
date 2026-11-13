//
//  PratoCardView.swift
//  Reservations
//
//  Created by B7 RAFA on 10/11/2026.
//

import SwiftUI

struct PratoCardView: View {
    
    let prato: PratoItem
    
    @State private var showAnimation: Bool = false
    
    var body: some View {
        
        VStack {
            
            Image(prato.imagem)
                .resizable()
                .frame(width:320 ,height: 320, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            Text(prato.name)
                .font(.custom("Baskerville", size: 25))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.top, 5)
            
            Divider()
            
            Text(prato.descricao)
                .font(.custom("Baskerville", size: 19))
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .frame(width: 290)
                .padding(.top, 5)
            
            Text(prato.preco)
                .font(.title3.bold())
                .foregroundStyle(.green)
                .padding(.top, 5)
                .padding(.bottom, 3)
        }
        .padding(18)
        .background(Color.white)
        .cornerRadius(45)
        .shadow(radius: 95)
        .padding(.horizontal, 22)
        
    }
}

#Preview {
    PratoCardView(prato: PratoItem(
        name: "Filé mignon ao molho de vinho do Porto com purê trufado",
        imagem: "Principal2",
        preco: "€49,99",
        descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas.",
        categoria: .pratosPrincipais
    ))
}
