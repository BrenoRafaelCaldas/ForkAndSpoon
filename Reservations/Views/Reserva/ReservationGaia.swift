//
//  ReservationGaia.swift
//  Reservations
//
//  Created by B7 RAFA on 10/12/2025.
//

import SwiftUI

struct ReservationGaia: View {
 
    
    @State private var selectedDate = Date()
    @State private var mostrarSheet = false
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.8039, green: 0.7059, blue: 0.603)

    
    var body: some View {
    
        ZStack {

            
            VStack(alignment: .center , spacing: 10) {
                
                Text("RESERVA")
                    .font(.system(.body, design: .monospaced))
                    .padding(.top)
                
                Text("Vila Nova de Gaia")
                    .font(.largeTitle.bold(.random()))
                    .padding(25)
                    .foregroundStyle(darkBlue)
                    .lineLimit(1)
                
                
                VStack(spacing: 60) {
                    
                        DatePicker(
                            selection: $selectedDate, in: Date()...,
                            displayedComponents: [.date, .hourAndMinute]
                        ){ }
                            .environment(\.locale, Locale(identifier: "pt-PT"))
                            .labelsHidden()
                            .datePickerStyle(.wheel)
                    
                        
                    

                    Button("Cofirmar Reserva") {
                        mostrarSheet = true
                    }
                    .padding(15)
                    .foregroundStyle(.black)
                    .background(gold)
                    .cornerRadius(90)
                    
                    .sheet(isPresented: $mostrarSheet) {
                    
                        VStack(spacing: 20) {
                            
                            Image(systemName:"checkmark.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.green)
                            
                            Text("Reserva Confirmada!")
                                .font(.title.bold())
                            
                            Text("Dia \(formatedDatePortugal( selectedDate)) em Vila Nova de Gaia.")
                                .padding()
                                .font(Font.title3.bold())
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                            
                            
                            Text("Acompanhe sua reserva no seu perfil, qualquer dúvida entre em contato (+351) 912 345 678.")
                                .padding()
                                .font(Font.subheadline.bold())
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .foregroundStyle(.secondary)
                        }

                        
                      
                                     
                    }
                    
                }
                .padding()
                
                     
            }
            .padding(15)
           
        }
        Spacer()

    }
    func formatedDatePortugal(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt_PT")
        formatter.dateStyle = .long
        formatter.timeZone = TimeZone(identifier: "Europe/Porto")
        formatter.timeStyle = .short
        return formatter.string(from: date)

    }

}



#Preview {
    ReservationGaia()
}
