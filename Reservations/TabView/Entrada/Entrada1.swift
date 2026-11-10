//
//  ConteudoView.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Entrada1: View {
    
    @State private var showEntrada1 = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                    Image("Entrada1")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                
                    Text("Carpaccio de filé mignon")
                            .font(.custom("Baskerville", size: 25))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                    
                    Text("Lâminas finas de filé mignon, parmesão, rúcula e azeite trufado.")
                            .font(.custom("Baskerville", size: 19))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.secondary)
                            .frame(width: 290)
                            .padding(.top, 4)
                
                    Text("€24,49")
                        .font(.custom("Baskerville", size: 22))
                        .fontWeight(.semibold)
                        .padding(.top, 6)
                        .padding(.bottom, 30)

                       
                }
            if showEntrada1 {
                            Entrada1()
                    .transition(.move(edge: .top).combined(with: .opacity)) // animação personalizada
                                .zIndex(1)
                        }
        }
        .ignoresSafeArea()
    }
    
}


#Preview {
    Entrada1()
}
