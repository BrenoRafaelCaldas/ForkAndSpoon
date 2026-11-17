//
//  SugestaoChefCard.swift
//  Reservations
//
//  Created by B7 RAFA on 12/11/2026.
//

import SwiftUI

struct SugestaoChefCard: View {
    
    let prato: PratoItem
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        CartaoPratoView(prato: prato)
            .overlay(alignment: .topLeading) {
                
                if prato.isSemAlcool {
                    badgeSemAcool
                        .padding(25)
                        .padding(.leading, 18)
                        
                } else {
                    badgeChfe
                        .padding(25)
                        .padding(.leading, 18)
                }
            }
    }
}

    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    private var badgeChfe: some View {
        
        HStack(spacing: 5) {
            Text("👨🏾‍🍳")
                .font(.caption.bold())

            Text("SUGESTÃO DO CHEF")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(.secondary)
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
    
        HStack(spacing: 6) {
            Text("0%")
                .font(.caption.bold())

            Text("ÁLCOOL")
                .font(.caption.bold())
                .tracking(1)
        
        }
        .padding(.horizontal, 11)
        .padding(.vertical, 8)
        .background(.ultraThickMaterial)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(gold, lineWidth: 0.8)
        )
        .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 2)
        .padding(11)
    }





#Preview {
    ZStack {
        Color(.systemGroupedBackground).ignoresSafeArea()
        
        SugestaoChefCard(
            prato: PratoItem(
                name: "Filé mignon ao molho de vinho do Porto com purê trufado",
                imagem: "Botanico",
                preco: "€49,99",
                descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas.",
                categoria: .pratosPrincipais,
                isSemAlcool: true
            )
        )
    }
}
