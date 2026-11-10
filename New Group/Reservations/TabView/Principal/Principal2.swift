//
//  Principal2.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Principal2: View {
    
    var body: some View {
    
        ScrollView {
            
            VStack {
                
                    Image("Principal2")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Filé mignon ao molho de vinho do Porto com purê trufado")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("'Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas cremoso aromatizado com trufas.''")
                          .font(.callout)
                          .foregroundColor(.secondary)
                          .multilineTextAlignment(.center)
                          .padding()
                
                    Text("€49,99")
                        .font(.custom("Baskerville", size: 22))
                        .fontWeight(.semibold)
                        .padding(.top, 6)
                        .padding(.bottom, 30)
                       
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Principal2()
}
