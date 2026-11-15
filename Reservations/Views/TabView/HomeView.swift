//
//  HomeView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {

        VStack{
                Image("LogoSplash")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 380)
                
                Text("Conheça nossas lojas")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            
                Divider()
            
                LojasView()
        }
        .ignoresSafeArea()
                
               
    }
}

#Preview {
    HomeView()
    
}
