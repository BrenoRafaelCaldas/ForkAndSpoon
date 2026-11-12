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
                .padding(.top, 10)
            
            Divider()
            
            Text(prato.descricao)
                .font(.custom("Baskerville", size: 19))
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .frame(width: 290)
                .padding(.top, 4)
            
            Text(prato.preco)
                .font(.title3.bold())
                .fontWeight(.semibold)
                .padding(.top, 6)
                .padding(.bottom)
        }
        .padding(18)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(radius: 95)
        .padding(.horizontal, 22)
        
    }
}

#Preview {
    PratoCardView(prato: PratoItem(
        name: "Tacos de carne",
        imagem: "Entrada1",
        preco: "€24,49",
        descricao: "Lâminas finas de filé mignon, parmesão, rúcula e azeite trufado."
    ))
}
