//
//  CartaoPratoView.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI

struct CartaoPratoView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var corTextoTitulo: Color {
        colorScheme == .dark ? gold : gold
    }
    
    var corFundoCartao: Color {
        Color(uiColor: .secondarySystemGroupedBackground)
    }
    
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
        .overlay(alignment: .topLeading) {
            if !estaVirado {
                if prato.isRecomendacaoChefe {
                    badgeChfe
                        .padding(25)
                        .padding(.leading, 18)
                } else if prato.isSemAlcool {
                    badgeSemAcool
                        .padding(25)
                        .padding(.leading, 18)
                }
            }
        }
        .compositingGroup()
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
    
    private var badgeChfe: some View {
        
        HStack(spacing: 5) {
            Text("👨🏾‍🍳")
                .font(.caption.bold())

            Text("SUGESTÃO DO CHEF")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(corTextoTitulo)
                .tracking(1)
            
        }
        .padding(.horizontal, 9)
        .padding(.vertical, 8)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(gold, lineWidth: 0.8)
        )
        .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 2)
        .padding(11)
    }

    private var badgeSemAcool: some View {
    
        HStack(spacing: 5) {
            Text("0%")
                .font(.caption.bold())
                .foregroundStyle(corTextoTitulo)


            Text("ÁLCOOL")
                .font(.caption.bold())
                .foregroundStyle(corTextoTitulo)
                .tracking(1)
        
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(gold, lineWidth: 0.8)
        )
        .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 2)
        .padding(.leading, 200)
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
                .foregroundStyle(Color.primary)
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
        .background(Color(.secondarySystemBackground))
        .cornerRadius(45)
        .shadow(radius: 10)
        .padding(.horizontal, 22)
    }
}

#Preview {
        CartaoPratoView(
            prato: PratoItem(
                name: "Filé mignon ao molho de vinho do Porto",
                imagem: "Botanico",
                preco: "€49,99",
                descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas.",
                categoria: .pratosPrincipais,
                isSemAlcool: true
            )
        )
}
