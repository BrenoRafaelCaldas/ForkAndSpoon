//
//  SwiftUIView.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Entrada4: View {
    var body: some View {
        ScrollView {
            
            VStack {
                
                    Image("Entrada4")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Foie gras selado com compota de figo e brioche tostado")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("''Foie gras levemente selado, mantendo sua textura amanteigada, servido com compota de figo artesanal e brioche tostado. Um contraste perfeito entre doçura, untuosidade e elegância.''")
                          .font(.callout)
                          .foregroundColor(.secondary)
                          .multilineTextAlignment(.center)
                          .padding()
                
                    Text("€21,99")
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
    Entrada4()
}
