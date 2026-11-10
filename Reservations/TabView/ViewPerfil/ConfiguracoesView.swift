//
//  ConfiguracoesView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct ConfiguracoesView: View {
    var body: some View {
        
        List {
            Image(systemName: "gearshape.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("CONFIGURAÇÕES")
                .font(.largeTitle.bold())
                .lineLimit(1)
        }
        
        
      
    }
}

#Preview {
    ConfiguracoesView()
}
