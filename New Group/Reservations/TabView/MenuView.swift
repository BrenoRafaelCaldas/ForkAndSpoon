//
//  MenuView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct MenuView: View {
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
    
                    Text("Entradas")
                    .font(.system(size: 32, weight: .bold, design: .serif))
                    .italic()
                    .padding(.top, 43)
                
                
                    NavigationLink(destination: Entrada1()) {
                        Image("Entrada1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    Text("Carpaccio de filé mignon")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    NavigationLink(destination: Entrada2()) {
                        Image("Entrada2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    
                    Text("Tartar de salmão com caviar")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    NavigationLink(destination: Entrada3()) {
                        Image("Entrada3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    
                    Text("Burrata trufada com tomate confit e pesto de manjericão")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    NavigationLink(destination: Entrada4()) {
                        Image("Entrada4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    Text("Foie gras selado com compota de figo e pão brioche tostado")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    
                    Text("Prato Principal")
                        .font(.system(size: 32, weight: .bold, design: .serif))
                        .padding(.top, 52)
                    
                    
                    
                    NavigationLink(destination: Principal1()) {
                        Image("Principal1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    Text("Polvo grelhado com batatas ao murro e aioli de limão siciliano ")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                NavigationLink(destination: Principal2()) {
                    Image("Principal2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 320, height: 200)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                            
                            
                    Text("Filé mignon ao molho de vinho do Porto com purê trufado")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                        
                    
                    
                    NavigationLink(destination: Principal3()) {
                        Image("Principal3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    Text("Magret de pato e batata dauphinoise")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    NavigationLink(destination: Principal4()) {
                        Image("Principal4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    Text("Bife ancho dry aged ")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    
                    
                    Text("Sobremesa")
                        .font(.system(size: 32, weight: .bold, design: .serif))
                        .padding(.top, 52)
                    
                    
                    NavigationLink(destination: Sobremesa1()) {
                        Image("Sobremesa1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    Text("Pera ao vinho com crumble de especiarias e creme inglês")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    NavigationLink(destination: Sobremesa3()) {
                        Image("Sobremesa3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    
                    Text("Coulant de chocolate belga com sorvete de pistache")
                            .font(.custom("Baskerville", size: 16))
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    
                    
                    
                    NavigationLink(destination: Sobremesa2()) {
                        Image("Sobremesa2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    
                    Text("Pavlova com frutas frescas e creme diplomata")
                               .font(.custom("Baskerville", size: 16))
                               .multilineTextAlignment(.center)
                               .frame(width: 300)
                               .padding(.top, 10)
                               .padding(.bottom, 30)
                    
                    
                    
                    NavigationLink(destination: Sobremesa4()) {
                        Image("Sobremesa4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                    Text("Tartelette de limão siciliano com merengue tostado")
                           .font(.custom("Baskerville", size: 16))
                           .multilineTextAlignment(.center)
                           .frame(width: 300)
                           .padding(.top, 10)
                           .padding(.bottom, 30)
                
            }
            
        }
    }
}

#Preview {
    MenuView()
}
