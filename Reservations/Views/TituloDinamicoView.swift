//
//  TituloDinamicoView.swift
//  Reservations
//
//  Created by B7 RAFA on 12/11/2026.
//

import SwiftUI

struct TituloDinamicoView: View {
    
    let categoria: CategoriaPrato
    
    let darkBlue = Color(red: 0.1003, green: 0.1023, blue: 0.2625)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        HStack {
            Text(categoria.rawValue.uppercased())
                .font(.system(size: 34, weight: .black, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [gold, gold.opacity(0.6)],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing
                                  )
                )
                .tracking(2)
                .id(categoria)
                .transition(
                    .asymmetric(insertion: .opacity.combined(with: .move(edge:                  .top)),
                                removal: .opacity.combined(with: .move(edge: .bottom))
                )
            
            )
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .animation(.spring(response: 0.4, dampingFraction: 0.8), value: categoria)
    }
}

#Preview {
    
    ZStack {
        Color(.systemGroupedBackground).ignoresSafeArea()
        VStack {
            TituloDinamicoView(categoria: .entradas)
            Spacer()
        }
    }
}
