//
//  ContentView.swift
//  Reservations
//
//  Created by B7 RAFA on 10/11/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    
//    @State private var listaDeReservas: [String] = []
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
    
        TabView {
                
            HomeView()
                .tabItem {
                    Label("Lojas", systemImage: "fork.knife.circle")
                }
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "menucard.fill")
                }
            
            PerfilView()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle.fill")
                }
        }
        .accentColor(gold)
        .badge(3)
        
    }
}

#Preview {
    ContentView()
}
