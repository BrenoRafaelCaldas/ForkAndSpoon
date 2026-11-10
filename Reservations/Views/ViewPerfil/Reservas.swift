//
//  Reservas.swift
//  Reservations
//
//  Created by B7 RAFA on 16/12/2025.
//

import SwiftUI

struct Reservas: View {
    
    @State private var selectedSection: ReservationSection = .proximas
    
    @Binding var reservas: [String]
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.8039, green: 0.7059, blue: 0.603)
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("RESERVAS")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)
                .lineLimit(1)
            
            
            Text("Suas Experiências Reservadas")
                .font(.system(.body, design: .rounded))
                .foregroundStyle(.white)
            
            Picker("Reservas", selection: $selectedSection) {
//                ForEach(ReservationSection.allCases, id: \.self) { section in
                ForEach(ReservationSection.allCases, id: \.self) { section in
                    Text(section.rawValue.capitalized)
                        .tag(section)
                }
            }
            .pickerStyle(.segmented)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .tint(gold)
            .padding(.top, 25)
            

        }
        .padding()
        .background(Color(darkBlue))

        Spacer()
        
        ScrollViewReader { proxy in

            ScrollView {

                VStack(spacing: 24) {

                    // Seção de próximas reservas
                    VStack {
                        Text("Próximas Reservas")
                            .font(.title3.bold())
                            .foregroundStyle(gold)
                            .padding(.horizontal)
                        
                        if reservas.isEmpty {
                            Text("Voce ainda nao tem reservas futuras")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                                .padding(.horizontal)
                        } else {
                            ForEach(reservas, id: \.self) { reserva in
                                HStack(spacing: 16) {
                                    Image(systemName: "firk.knife.circle.fill")
                                        .font(.system(size: 38))
                                        .foregroundStyle(gold)
                                    
                                    VStack {
                                        Text(reserva)
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                        
                                        Text("Confirmada")
                                        
                                    }
                                    Spacer()
                                }
                                
                            }
                        }
                    }
                    
                    

                    // Seção de reservas anteriores
                    VStack {
                        Text("Reservas Anteriores")
                    }
                    .id(ReservationSection.anteriores)

                    // Seção de reservas canceladas
                    VStack {
                        Text("Reservas Canceladas")
                    }
                    .id(ReservationSection.canceladas)

                }
            }

            .onChange(of: selectedSection) { _, newValue in

                withAnimation {
                    proxy.scrollTo(newValue, anchor: .top)
                }

            }
        }
    }

}

enum ReservationSection: String, CaseIterable {
    case proximas = "Próximas"
    case anteriores = "Anteriores"
    case canceladas = "Canceladas"
}


#Preview {
    Reservas(reservas: .constant([]))
}
