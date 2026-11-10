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
                .frame(width:380 ,height: 380, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
            Text(prato.name)
                .font(.custom("Baskerville", size: 25))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.top, 10)
            
            Text(prato.descricao)
                .font(.custom("Baskerville", size: 19))
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .frame(width: 290)
                .padding(.top, 4)
            
            Text(prato.preco)
                .font(.custom("Baskerville", size: 22))
                .fontWeight(.semibold)
                .padding(.top, 6)
                .padding(.bottom)
        }
        .padding(13)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 10)
        
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
