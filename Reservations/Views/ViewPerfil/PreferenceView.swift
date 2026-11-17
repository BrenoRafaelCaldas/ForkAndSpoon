//
//  DescontosView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct preferenceView: View {
    var body: some View {
        
        
        List {
            
            Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text("PREFERENCE PAGE")
                .font(.title.bold())
        }
    }
}

#Preview {
    preferenceView()
}
