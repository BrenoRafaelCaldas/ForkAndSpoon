//
//  Sobremes3.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Sobremesa3: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Image("Sobremesa3")
                    .resizable()
                    .frame(width:410 ,height: 410, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            VStack {
                Text("Coulant de Chocolate Belga com Sorvete de Pistache")
                    .font(.title)
                    .foregroundStyle(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Text("''Bolo individual de chocolate belga com interior cremoso e quente que escorre ao ser aberto. Servido com sorvete artesanal de pistache, que equilibra a intensidade do chocolate com frescor e notas suaves de castanha.''")
                      .font(.callout)
                      .foregroundColor(.secondary)
                      .multilineTextAlignment(.center)
                      .padding()
                
                Text("€34,99")
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
    Sobremesa3()
}
