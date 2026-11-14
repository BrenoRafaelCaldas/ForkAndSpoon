//
//  PerfilView.swift
//  Reservations
//
//  Created by B7 RAFA on 13/12/2025.
//

import SwiftUI

struct PerfilView: View {
        
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        
        NavigationStack {
            
            List {
                
                HStack {
                    
                    Image("Perfil")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(50)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 18) {
                        Text("BRENO RAFAEL")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            
                        
                        Button {
                            print("Perfil")
                        } label: {
                            Text("Editar Perfil")
                                .font(.headline)
                                .foregroundStyle(gold)
                        }
                        
                    }
                }
                .padding(10)
                
                NavigationLink(destination: ReservasView()){
                    
                    HStack {
                    
                        Image(systemName: "calendar.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(darkBlue)
                            .font(.system(size: 30, weight: .regular))
                        
                        Text("Reservas")
                            .font(.title2)
                            .fontWeight(.regular)

                    }
                    .padding()
                }
                
                NavigationLink(destination: AvaliacoesView()) {
                        
                        HStack {
                        
                            Image(systemName: "star.circle.fill")
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(darkBlue)
                                .font(.system(size: 30, weight: .regular))
                            
                            Text("Avaliações")
                                .font(.title2)
                                .fontWeight(.regular)
                        }
                        .padding()
                }
                   
                NavigationLink(destination: DescontosView()) {
                    HStack {
                        
                        Image(systemName: "dollarsign.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(darkBlue)
                            .font(.system(size: 30, weight: .regular))
                        
                        Text("Descontos")
                            .font(.title2)
                            .fontWeight(.regular)
                    }
                    .padding()
                }
                
                NavigationLink(destination: ConfiguracoesView()){
                    HStack {
                        Image(systemName: "gearshape.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(darkBlue)
                            .font(.system(size: 30, weight: .regular))
                        
                        Text("Configurações")
                            .font(.title2)
                            .fontWeight(.regular)
                    }
                    .padding()
                }
                
                NavigationLink(destination: TrocarContaView()){
                    HStack {
                        Image(systemName: "person.crop.badge.magnifyingglass.fill")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(darkBlue)
                            .font(.system(size: 30, weight: .regular))
                        
                        
                        Text("Trocar de Conta")
                            .font(.title2)
                            .fontWeight(.regular)
                    }
                    .padding()
                }
                    
                    HStack {
                        Image(systemName: "pip.exit")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(darkBlue)
                            .font(.system(size: 30))
                        
                        Button("SAIR") {
                            
                        }
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(5)
                        .foregroundColor(gold)
                        
                    }
                    .padding()
                                
            }
            .padding(.top, 26)
            .ignoresSafeArea()
            
            
        }
    }
}

#Preview {
    PerfilView()
}
