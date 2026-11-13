//
//  MenuViewModel.swift
//  Reservations
//
//  Created by B7 RAFA on 12/11/2026.
//

import SwiftUI
import Combine

class MenuViewModel: ObservableObject {
    
    @Published var pratos: [PratoItem] = []
    
    @Published var categoriaAtiva: CategoriaPrato = .entradas
    
    init() {
        carregarPratosIniciais()
    }
    
    var sugestaoDoChef : PratoItem? {
        return pratos.first(where: {$0.categoria == .pratosPrincipais}) ?? pratos.first
    }
    
    func pratos(para categoria: CategoriaPrato) -> [PratoItem] {
        return pratos.filter( { $0.categoria == categoria })
    }
    
    private func carregarPratosIniciais() {
        
    }
}
