//
//  TrocarContaView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct TrocarContaView: View {
    
    var body: some View {
        
        List {
            Image(systemName: "person.crop.badge.magnifyingglass.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("TROCAR DE CONTA")
                .font(.largeTitle.bold())
                .lineLimit(1)
        }
    }
        
        
}

#Preview {
    TrocarContaView()
}
