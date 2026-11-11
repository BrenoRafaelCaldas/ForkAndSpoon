//
//  ReservaModel.swift
//  Reservations
//
//  Created by B7 RAFA on 11/11/2026.
//

import SwiftUI

struct ReservaModel: Identifiable, Codable {

    var id: String = UUID().uuidString
    let restaurante: String
    let datahora: Date
    let numeroPessoas: Int
    var status: String
    
}


