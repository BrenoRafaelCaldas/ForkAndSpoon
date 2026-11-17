//
//  PerfilView.swift
//  Reservations
//
//  Created by B7 RAFA on 13/12/2025.
//

import SwiftUI
import PhotosUI

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
                        .cornerRadius(70)
                        .shadow(color: .primary.opacity(0.30), radius: 20)

                    
                    Spacer()
                                        
                    VStack(alignment: .center) {
                        Text("BRENO RAFAEL")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        
                        Text("Membro Vip - Club Fork & Spoon ")
                            .font(.caption.smallCaps())
                            .fontWeight(.semibold)
                            .foregroundStyle(gold)
                            .lineLimit(1)
                            .padding(.bottom, 8)
                        
                        Button {
                            print("Editar Perfil")
                        } label: {
                            Text("Editar Perfil")
                                .font(.headline)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                                .foregroundStyle(.secondary)
                                .overlay(
                                    Capsule()
                                        .stroke(.secondary, lineWidth: 0.8)
                                    
                                )
                        }
                        
                    }
                }
                    Text("Suas Experiências")
                        .font(.headline.smallCaps())
                        .fontWeight(.semibold)
                        .foregroundStyle(gold)
                        .lineLimit(1)
                        .padding(.top, 10)

                
                
                NavigationLink(destination: ReservasView()){
                    
                    HStack {
                    
                        Image(systemName: "calendar.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 35, weight: .regular))
                        
                        VStack(alignment: .leading){
                            
                            Text("Reservas")
                                .font(.headline)
                                .fontWeight(.regular)
                            
                            Text("Historico e ativas")
                                .font(.caption.smallCaps())
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                    }
                }
                
                
                
                NavigationLink(destination: clubView()) {
                        
                    HStack {
                    
                        Image(systemName: "coloncurrencysign.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 35, weight: .regular))
                        
                        VStack(alignment: .leading){
                            
                            Text("Club Fork & Spoon")
                                .font(.headline)
                                .fontWeight(.regular)
                            
                            Text("Seus Benficios e pontos")
                                .font(.caption.smallCaps())
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                    }
                }
                
                
                Text("Preferências & Conta")
                    .font(.headline.smallCaps())
                    .fontWeight(.semibold)
                    .foregroundStyle(gold)
                    .lineLimit(1)
                    .padding(.top, 10)
                   
                NavigationLink(destination: preferenceView()) {
                    HStack {
                    
                        Image(systemName: "fork.knife.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 35, weight: .regular))
                        
                        VStack(alignment: .leading){
                            
                            Text("Preferências Gastronômicas")
                                .font(.headline)
                                .fontWeight(.regular)
                            
                            Text("Restrições e preferências")
                                .font(.caption.smallCaps())
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                    }
                }
                
                NavigationLink(destination: ConfiguracoesView()){
                    
                    HStack {
                    
                        Image(systemName: "gear.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 35, weight: .regular))
                        
                        VStack(alignment: .leading){
                            
                            Text("Configurações")
                                .font(.headline)
                                .fontWeight(.regular)
                            
                            Text("Notificações, idioma e tema")
                                .font(.caption.smallCaps())
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                    }
                }
                
                Text("Sobre e Suporte")
                    .font(.headline.smallCaps())
                    .fontWeight(.semibold)
                    .foregroundStyle(gold)
                    .lineLimit(1)
                    .padding(.top,10)
                
                NavigationLink(destination: helpView()){
                    
                    HStack {
                    
                        Image(systemName: "info.circle.fill")
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 35, weight: .regular))
                        
                        VStack(alignment: .leading){
                            
                            Text("Ajuda e Atendimento")
                                .font(.headline)
                                .fontWeight(.regular)
                            
                            Text("Dúvidas, suporte e contato")
                                .font(.caption.smallCaps())
                                .foregroundStyle(.secondary)
                                .lineLimit(1)
                        }
                    }
                }
                    
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(.primary)
                            .font(.system(size: 35))
                        
                        Button("Sair da conta") {
                            print("Sair da Conta")

                        }
                        .font(.headline)
                        .foregroundColor(.red)
                        
                    }
                                
            }
            .padding(.top, 60)
            .padding(.bottom, 90)
            .ignoresSafeArea()
            .listStyle(.plain)
            
            
        }
        
    }
}



#Preview {
    PerfilView()
}
