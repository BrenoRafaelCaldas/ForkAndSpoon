//
//  LojaPortoCentro.swift
//  Reservations
//
//  Created by B7 RAFA on 25/11/2025.
//

import SwiftUI

struct LojaPortoCentro: View {
    
    @State private var showReservationPortoCentro = false
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        HStack {
            Image(systemName: "mappin.and.ellipse.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(darkBlue)
            
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Avenida Gustavo Eiffel 272")
                    .font(.title2.bold())
                    .padding(5)
                
                HStack {
                    Text("PORTO CENTRO")
                        .font(.footnote.italic())
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Button{ showReservationPortoCentro = true
                    }  label: { Text("Reserve Agora")
                            .font(.headline.bold())
                            .foregroundStyle(gold)
                            .padding(.horizontal)
                    }
                }
                
            }
        }
        .padding(10)
        
        .sheet(isPresented: $showReservationPortoCentro) {
        ReservationPortoCentro()
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
        }
    }
}
#Preview {
    LojaPortoCentro()
}




//"Avenida Gustavo Eiffel, 272"
