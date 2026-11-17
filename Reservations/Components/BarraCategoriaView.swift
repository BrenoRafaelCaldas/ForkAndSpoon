//
//  BarraCategoriaView.swift
//  Reservations
//
//  Created by B7 RAFA on 12/11/2026.
//

import SwiftUI

struct BarraCategoriaView: View {
    
    @Binding var categoriaSelecionada: CategoriaPrato
    
    var aoSelecionarCategoria: (CategoriaPrato) -> Void
    
    @Namespace private var namespaceCategoria
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                ForEach(CategoriaPrato.allCases) { categoria in
                    botaoCategoria(categoria)
                }
            }
            .padding(.horizontal, 7)
            .padding(.vertical, 7)
        }
        .shadow(color: .primary.opacity(0.40), radius: 10, x: 0, y: 5)
        .padding(.horizontal, 16)
        .padding(.bottom, 10)
    }
    
    @ViewBuilder
    
    private func botaoCategoria(_ categoria: CategoriaPrato) -> some View {
        let estaSelecionado = (categoriaSelecionada == categoria)
        
        Button {
            withAnimation(.spring(response: 0.25, dampingFraction: 0.75)) {
                categoriaSelecionada = categoria
                aoSelecionarCategoria(categoria)
            }
        } label: {
            Text(categoria.rawValue)
                .font(.subheadline.weight(estaSelecionado ? .bold : .regular))
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
//
        }
        .buttonStyle(.glass)
        
    }
}

#Preview {
    @Previewable @State var categoriaTeste: CategoriaPrato = .entradas
    
    ZStack {
        BarraCategoriaView(
            categoriaSelecionada: $categoriaTeste,
            aoSelecionarCategoria: { novaCategoria in
                print("Selecionou: \(novaCategoria.rawValue)")
            }
        )
    }
}
