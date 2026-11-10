//
//  Entrada2.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Entrada2: View {
    var body: some View {
        ScrollView {
            
            VStack {
                
                    Image("Entrada2")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Tartar de salmão com caviar")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("''Cubos de salmão fresquíssimo temperados com limão siciliano e ervas, montados em formato elegante. Finalizado com caviar e creme cítrico leve, oferecendo frescor e sofisticação em cada garfada.''")
                          .font(.callout)
                          .foregroundColor(.secondary)
                          .multilineTextAlignment(.center)
                          .padding()
                
                Text("€22,99")
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
    Entrada2()
}
