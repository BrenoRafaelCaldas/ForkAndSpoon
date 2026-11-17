//
//  AvaliacoesView.swift
//  Reservations
//
//  Created by B7 RAFA on 07/11/2026.
//

import SwiftUI

struct clubView: View {
    var body: some View {
        
        List {
            
            Image(systemName: "star.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("CLUBE F&S PAGE")
                .font(.largeTitle.bold())
                .lineLimit(1)
        }
    }
}

#Preview {
    clubView()
}
