//
//  CartaoPratoView.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI

struct CartaoPratoView: View {
    
    let prato: PratoItem
    
    @State private var estaVirado = true
    
    var body: some View {
        
        ZStack {
            PratoCardView(prato: prato)
                .opacity(estaVirado ? 0 : 1)
            
            versoCartao
                .opacity(estaVirado ? 1 : 0)
                .rotation3DEffect(.degrees(180),
                                  axis: (x: 0, y: 1, z: 0))
        }
        .rotation3DEffect(.degrees(estaVirado ? 180 : 0),
                          axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .onTapGesture {
            withAnimation(
                .spring(response: 0.6,
                        dampingFraction: 0.75)) {
                estaVirado.toggle()
                }
        }
    }
    
    private var versoCartao: some View {
        
        VStack(alignment: .center ,spacing: 10) {
            
            Image(prato.imagem)
                .resizable()
                .frame(width:320 ,height: 320, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            
            Text(prato.name)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.top, 12)
                .padding(.bottom, 12)
            
            
            Divider()
                
                Text("Toque para ver mais")
                    .font(.caption.bold())
                    .foregroundStyle(.tertiary)
                    .padding(.top, 10)
                    .padding(.bottom, 10)

        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(45)
        .shadow(radius: 95)
        .padding(.horizontal, 22)
    }
}

#Preview {
        CartaoPratoView(
            prato: PratoItem(
                name: "Filé mignon ao molho de vinho do Porto",
                imagem: "Principal2",
                preco: "€49,99",
                descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas.",
                categoria: .pratosPrincipais
            )
        )
}
