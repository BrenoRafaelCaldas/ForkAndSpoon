//
//  PratoModel.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI

enum CategoriaPrato: String, CaseIterable, Identifiable {
    
    case entradas = "Entradas"
    case pratosPrincipais = "Pratos principais"
    case sobremesas = "Sobremesas"
    
    var id : String { rawValue }
}

struct PratoModel: Identifiable {
    
    let id = UUID()
    let name: String
    let descricao: String
    let preco: Double
    let categoria: CategoriaPrato
    let imagem: String
    
    var precoFormatado: String {
        return preco.formatted(.currency(code: "EUR"))
    }
}
