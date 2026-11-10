//
//  Sobremesa1.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Sobremesa1: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Image("Sobremesa1")
                    .resizable()
                    .frame(width:410 ,height: 410, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            VStack {
                Text("Pera ao Vinho com Crumble de Especiarias e Creme Inglês")
                    .font(.system(size: 30))
                    .foregroundStyle(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                   
                Text("''Pera cozida lentamente em vinho tinto aromatizado com canela, anis e casca de cítricos, adquirindo cor rubi e perfume intenso. Servida com crumble crocante de especiarias e creme inglês aveludado, criando camadas de textura e sabor..''")
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
    Sobremesa1()
}
