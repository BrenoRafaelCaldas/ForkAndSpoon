//
//  DescontosView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct DescontosView: View {
    var body: some View {
        
        
        List {
            
            Image(systemName: "dollarsign.circle.fill", variableValue: 1.00)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("DESCONTOS PAGE")
                .font(.largeTitle.bold())
                .lineLimit(1)
        }
    }
}

#Preview {
    DescontosView()
}
