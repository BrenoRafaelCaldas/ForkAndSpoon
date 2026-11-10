//
//  Principal1.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Principal1: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                    Image("Principal1")
                        .resizable()
                        .frame(width:410 ,height: 410, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Text("Polvo grelhado com batatas ao murro e aioli de limão siciliano")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("''Polvo grelhado macio e levemente tostado, servido com batatas ao murro douradas e um aioli de limão siciliano que traz frescor e cremosidade ao prato.''")
                          .font(.callout)
                          .foregroundColor(.secondary)
                          .multilineTextAlignment(.center)
                          .padding()
                
                    Text("€45,99")
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
    Principal1()
}
