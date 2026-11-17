//
//  ReservasView.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI

struct ReservasView: View {
    
    @StateObject private var viewModel = ReservasViewModel()
    
    @State private var abaSelecionada: AbaReserva = .proximas
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.8039, green: 0.7059, blue: 0.603)
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            headView
            
            Divider()
            
            pickerAbaView
            
            ScrollView {
                
                VStack(spacing: 16) {
                    
                    if viewModel.reservaFiltradas.isEmpty {
                        estadoVazioView
                    } else {
                        ForEach(viewModel.reservaFiltradas) { reserva in
                            cardReserva(reserva)
                        }
                    }
                }
                .padding()
            }
            
        }
        
    }
    
    private var headView: some View {
        
        VStack(alignment: .leading) {
            
            
            Text("Reservas")
                .font(.largeTitle.bold())
                .foregroundStyle(.primary)
            
            Text("Suas Experiencias Gastronômicas Salvas")
                .font(.subheadline.bold())
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.secondary.opacity(0.1))
        
        
    }
    
    
    private var pickerAbaView: some View {
        
        Picker("Reservas", selection: $viewModel.abaSelecionada) {
            ForEach(AbaReserva.allCases, id: \.self) { aba in
                Text(aba.rawValue).tag(aba)
            }
        }
        .pickerStyle(.segmented)
        .padding()
        .cornerRadius(14)
    }
    
    private var estadoVazioView: some View {
        VStack(spacing: 12) {
            
            Image(systemName: "calendar.badge.clock")
                .font(.system(size: 50))
                .foregroundStyle(gold)
            
            
            Text("Nenhuma Reserva Nesta Categoria")
                .font(.headline)
                .foregroundStyle(.primary)
        }
        .padding(.top, 40)
    }
    
    private func cardReserva(_ reserva: ReservaModel) -> some View {
        HStack(spacing: 16) {
            Image(systemName: "calender.badge.clock")
                .font(.system(size: 38))
                .foregroundStyle(gold)
            
            VStack(alignment: .leading, spacing: 10){
                Text(reserva.restaurante)
                    .font(.headline.bold())
                    .foregroundStyle(.primary)
                
                Text(reserva.datahora.formatted())
                    .font(.caption.bold())
                    .foregroundStyle(.primary.opacity(0.5))
                
                Text("Mesa para \(reserva.numeroPessoas) pessoas")
                    .font(.caption.bold())
                    .foregroundStyle(.primary)
            }
            Spacer()
            
            Text(reserva.status)
                .font(.caption.bold())
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(corDoStatus(reserva.status).opacity(0.2))
                .foregroundStyle(corDoStatus(reserva.status))
                .clipShape(Capsule())

        }
        .padding()
        .background(Color.primary.opacity(0.1))
        .cornerRadius(14)
    }
    
    private func corDoStatus(_ status : String) -> Color {
        switch status {
        case "Confirmada":
            return .accentColor.opacity(0.9)
        case "Cancelada":
            return .red.opacity(0.8)
        case "Concluído":
            return .gray
        default:
            return .secondary.opacity(0.54)
        }
    }

}

enum AbaReserva: String, CaseIterable {
    case proximas = "Proximas"
    case anteriores = "Anteriores"
    case canceladas = "Canceladas"
}


#Preview {
    ReservasView()
}
