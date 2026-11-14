//
//  HomeView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {

        NavigationView {
            
            ScrollView {
                
                    Image("Logo")
                        .resizable()
                        .frame(width:405 ,height: 370)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                        .ignoresSafeArea()
                    
                    Text("Conheça nossas lojas")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(5)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color(.black))
                    
                    LojaPorto()
                        .frame(width: 390, height: 95)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color(.black))
                    
                    LojaGaia()
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
    HomeView()
    
}
