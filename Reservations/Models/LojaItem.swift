//
//  LojasItem.swift
//  Reservations
//
//  Created by B7 RAFA on 14/11/2026.
//


import SwiftUI

enum TipoLoja {
    
    case gaia
    case porto
    case portoCentro
    case aveiro
    case lisboa
    
}

struct LojaItem: Identifiable {
    
    let id = UUID()
    let nome: String
    let endereco: String
    let imagem: String
}
