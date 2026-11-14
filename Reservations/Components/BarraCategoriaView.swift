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
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        
        
        .overlay(
            Capsule()
                .stroke(Color.white.opacity(0.25), lineWidth: 0.9)
            )
        .shadow(color: .black.opacity(0.10), radius: 10, x: 0, y: 5)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    private func botaoCategoria(_ categoria: CategoriaPrato) -> some View {
        let estaSelecionado = (categoriaSelecionada == categoria)
        
        Button {
            withAnimation(.spring(response: 0.35, dampingFraction: 0.75)) {
                categoriaSelecionada = categoria
                aoSelecionarCategoria(categoria)
            }
        } label: {
            Text(categoria.rawValue)
                .font(.subheadline.weight(estaSelecionado ? .bold : .medium))
                .foregroundStyle(estaSelecionado ? .primary : .secondary)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background {
                    if estaSelecionado {
                        Capsule()
                            .fill(Color(.tertiarySystemFill))
                        .matchedGeometryEffect(id: "indicadorCategoria", in: namespaceCategoria)                    }
                }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    @Previewable @State var categoriaTeste: CategoriaPrato = .entradas
    
    ZStack {
        Color.black.ignoresSafeArea()
        
        BarraCategoriaView(
            categoriaSelecionada: $categoriaTeste,
            aoSelecionarCategoria: { novaCategoria in
                print("Selecionou: \(novaCategoria.rawValue)")
            }
        )
    }
}
