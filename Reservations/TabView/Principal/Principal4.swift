//
//  Principal4.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Principal4: View {
    
    var body: some View {
    
        ScrollView {
            
            VStack {
    
                    Image("Principal4")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Bife Ancho Dry Aged com Manteiga de Ervas")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("''Bife ancho maturado dry aged, grelhado até obter crosta dourada e sabor intenso. Servido com manteiga de ervas aromáticas e legumes assados caramelizados, equilibrando rusticidade e elegância no prato.''")
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
    Principal4()
}
