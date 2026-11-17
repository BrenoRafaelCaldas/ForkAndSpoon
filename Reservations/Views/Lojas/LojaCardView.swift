//
//  LojaCardView.swift
//  Reservations
//
//  Created by B7 RAFA on 14/11/2026.
//

import SwiftUI

struct LojaCardView: View {
    
    let loja: LojaItem
    
    @State private var showReservationGaia = false
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        HStack {
            Image(systemName: loja.imagem)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(.primary)
            
            
            VStack (alignment: .listRowSeparatorLeading, spacing: 6) {
                Text(loja.endereco)
                    .font(.title2.bold())
                    .padding(5)
                
                HStack {
                    Text(loja.nome)
                        .font(.caption.italic())
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Button{ showReservationGaia = true
                    }  label: { Text("Reserve Agora")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(gold)
                            .padding(.horizontal)
                            .lineLimit(1) 
                    }
                }
                
            }
            
        }
        .padding(10)
        .sheet(isPresented: $showReservationGaia) {
         ReservationView(loja: loja)
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
                
        }
        .padding(.vertical, 5)
        .background(Color.gray.opacity(0.08))
        .cornerRadius(30)
        .shadow(radius: 95)
        
    }

}


#Preview {
    LojaCardView(
        loja: LojaItem(nome: "Algarve",
                       endereco: "Estrada de Benagil 10",
                       imagem: "mappin.and.ellipse.circle.fill"
                      )
    )
}
