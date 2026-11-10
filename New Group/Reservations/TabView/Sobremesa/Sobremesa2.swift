//
//  Sobremesa2.swift
//  Reservations
//
//  Created by B7 RAFA on 24/11/2025.
//

import SwiftUI

struct Sobremesa2: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Image("Sobremesa2")
                    .resizable()
                    .frame(width:410 ,height: 410, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            VStack {
                Text("Pavlova com Frutas Frescas e Creme Diplomata")
                    .font(.title)
                    .foregroundStyle(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("''Merengue crocante por fora e macio por dentro, coberto com creme diplomata leve e sedoso. Finalizada com frutas frescas da estação, trazendo cor, frescor e delicadeza a uma sobremesa elegante e fotogênica.''")
                      .font(.callout)
                      .foregroundColor(.secondary)
                      .multilineTextAlignment(.center)
                      .padding()
                
                Text("€32,99")
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
    Sobremesa2()
}
