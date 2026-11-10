//
//  Principal3.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Principal3: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                    Image("Principal3")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Magret de pato com laranja caramelizada e batata dauphinoise")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("''Combina o pato suculento com o doce cítrico da laranja e a cremosidade das batatas gratinadas, criando um prato elegante e equilibrado.''")
                          .font(.callout)
                          .foregroundColor(.secondary)
                          .multilineTextAlignment(.center)
                          .padding()
                
                    Text("€47,49")
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
    Principal3()
}
