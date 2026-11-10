//
//  Sobremesa4.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Sobremesa4: View {
    
    var body: some View {
    
        ScrollView {
            
            VStack {
                Image("Sobremesa4")
                    .resizable()
                    .frame(width:410 ,height: 410, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            VStack {
                Text("Tartelette de Limão Siciliano com Merengue Tostado")
                    .font(.title)
                    .foregroundStyle(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("''Base crocante de massa doce recheada com creme de limão siciliano de acidez vibrante. Finalizada com merengue italiano delicadamente tostado, criando um contraste entre crocante, cremoso e leveza cítrica.''")
                      .font(.callout)
                      .foregroundColor(.secondary)
                      .multilineTextAlignment(.center)
                      .padding()
                
                Text("€31,99")
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
    Sobremesa4()
}
