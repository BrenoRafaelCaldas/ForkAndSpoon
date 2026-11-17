//
//  TrocarContaView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct helpView: View {
    
    var body: some View {
        
        List {
            Image(systemName: "info.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("AJUDA E ATENDIMENTO")
                .font(.title.bold())
                .lineLimit(1)
        }
    }
        
        
}

#Preview {
    helpView()
}
