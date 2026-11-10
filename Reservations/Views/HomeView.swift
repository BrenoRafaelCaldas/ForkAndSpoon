//
//  HomeView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct HomeView: View {

    @Binding var reservasConfirmadas: [String]
    
    var body: some View {

        NavigationView {
            
            ScrollView {
                Image("Logo")
                    .resizable()
                    .frame(width:405 ,height: 370)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .ignoresSafeArea()
                                    
                Text("Conheça nossas lojas")
                    .font(.system(.body, design: .serif))
                    .padding(5)
                
                Divider()
                    .frame(height: 1)
                    .background(Color(.black))
                
                LojaPorto()
                    .frame(width: 390, height: 95)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                 
                Spacer()
                
                Divider()
                    .frame(height: 1)
                    .background(Color(.black))
                
                LojaGaia(reservas: $reservasConfirmadas)
                    .frame(width: 390, height: 95)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding(5)
                
                Divider()
                    .frame(height: 1)
                    .background(Color(.black))
                
                LojaPortoCentro()
                    .frame(width: 390, height: 95)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding(5)
                
                Divider()
                    .frame(height: 1)
                    .background(Color(.black))
            }
            .ignoresSafeArea()
            .padding(.bottom)
            
            
        }
               
    }
}

#Preview {
    HomeView(reservasConfirmadas: .constant([]))
    
}
