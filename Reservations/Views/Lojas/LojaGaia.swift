//
//  Loja1.swift
//  Reservations
//
//  Created by B7 RAFA on 25/11/2025.
//

import SwiftUI

struct LojaGaia: View {
    
    @State private var showReservationGaia = false
    
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        HStack {
            Image(systemName: "mappin.and.ellipse.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(darkBlue)
            
            
            VStack (alignment:.leading ,spacing: 6) {
                Text("Avenida de Diogo Leite 344")
                    .font(.title2.bold())
                    .padding(5)
                
                HStack {
                    Text("VILA NOVA DE GAIA")
                        .font(.footnote.italic())
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Button{ showReservationGaia = true
                    }  label: { Text("Reserve Agora")
                            .font(.headline.bold())
                            .foregroundStyle(gold)
                            .padding(.horizontal)
                        
                    }
                }
                
            }
        }
        .padding(10)
        .sheet(isPresented: $showReservationGaia) {
         ReservationGaia()
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
            
        }
    }
    
}

#Preview {
    LojaGaia()
}
