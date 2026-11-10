//
//  SettingsView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct SettingsView: View {
   
    @Binding var reservasConfirmadas: [String]

    
    var body: some View {
     
        PerfilView(reservas: $reservasConfirmadas)
        
    }
}

#Preview {
    SettingsView(reservasConfirmadas: .constant([]))
}
