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
                .spring(response: 0.4,
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
                .padding(.bottom, 17)

            
            
            Text(prato.name)
                .font(.custom("Baskerville", size: 28))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.top, 20)
                .padding(.bottom, 17)
            
            
            Divider()
                
                Text("Toque para ver mais")
                    .font(.caption2.bold())
                    .foregroundStyle(.tertiary)
                    .padding(.top, 17)
                    .padding(.bottom, 8)
            
            

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
                name: "Filé mignon ao molho de vinho do Porto com purê trufado",
                imagem: "Principal2",
                preco: "€49,99",
                descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas cremoso aromatizado com trufas."
            )
        )
}
