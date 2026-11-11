//
//  ViewModel.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI
import Combine

class ReservasViewModel: ObservableObject {
    
    @Published var reservas: [ReservaModel] = []
    
    @Published var abaSelecionada: AbaReserva = .proximas
    
    var reservaFiltradas: [ReservaModel] {
        switch abaSelecionada {
            case .proximas:
            return reservas.filter { $0.status == "Confirmada" }
        case .anteriores:
            return reservas.filter { $0.status == "Concluída" }
        case .canceladas:
            return reservas.filter { $0.status == "Cancelada" }
            
        }
    }
    
    init() {
        carregarReservasIniciais()
    }
    
    func carregarReservasIniciais() {
        self.reservas = [
            ReservaModel(restaurante: "F&S - Vila Nova de Gaia",
                         datahora: Date(),
                         numeroPessoas: 2,
                         status: "Confirmada"),
            
            ReservaModel(restaurante: "F&S - Matosinhos",
                         datahora: Date().addingTimeInterval(86400),
                         numeroPessoas: 4,
                         status: "Concluída"),
            
            ReservaModel(restaurante: "F&S - Porto Centro",
                         datahora: Date().addingTimeInterval(86400),
                         numeroPessoas: 8,
                         status: "Cancelada")
        ]
    }
    
    func adicionarReserva(restaurante: String,
                          dataHora: Date,
                          numeroPessoas: Int){
        let novaReserva = ReservaModel(restaurante: restaurante,
                                       datahora: dataHora,
                                       numeroPessoas: numeroPessoas,
                                       status: "Confirmada")
        self.reservas.append(novaReserva)
    }
    
    func cancelarReserva(id: String) {
        if let index = reservas.firstIndex(where: { $0.id == id }) {
            reservas[index].status = "Cancelada"
        }
    }

}




