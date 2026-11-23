//
//  AvaliacoesView.swift
//  Reservations
//
//  Created by B7 RAFA on 07/11/2026.
//

import SwiftUI

struct clubView: View {
    
    @State private var pontosUsuario: Int = 1200
    
    @State private var nivelUsuario: String = "Nível GOLD"
    
    @State private var progressNivel: Double = 0.90
    
    @State private var drikResgatado: Bool = false
    @State private var sobremesaResgatada: Bool = false

    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                ZStack {
                    LinearGradient(
                        colors: [darkBlue, .blueLogo],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        HStack {
                            
                            VStack {
                                
                                Text("CLUB FORK & SPOON")
                                    .font(.caption.bold())
                                    .foregroundStyle(gold)
                                    .tracking(1.5)
                                
                                Text(nivelUsuario)
                                    .font(.title3.bold())
                                    .foregroundStyle(.white)
                                
                            }
                            Spacer()
                            
                            Image(systemName: "coloncurrencysign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 46)
                                .font(.title2)
                                .foregroundStyle(gold)
                        }
                        Divider()
                            .background(Color.white.opacity(0.3))
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 2) {
                                
                                Text("SEUS PONTO")
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                                
                                Text("\(pontosUsuario) pts")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(gold)
                            }
                            
                            Spacer()
                            
                            Text("Membor desde 2026")
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.7))
                        }
                    }
                    .padding(20)
                }
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    HStack {
                        Text("Proximo Nível PLATINUM")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.primary)
                        
                        Spacer()
                        
                        Text("9/10 Reservas")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(gold)
                    }
                    ProgressView(value: progressNivel)
                        .tint(gold)
                        .scaleEffect(x: 1, y: 1.8, anchor: .center)
                    
                    Text("Você está a apenas 1 reserva do próximo Nível")
                        .font(.caption2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        .lineLimit(1)
                    
                }
                .padding(16)
                .background(Color(.tertiarySystemGroupedBackground))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 14){
                    
                    Text("Recompensas Exclusivas")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        .padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "wineglass")
                            .font(.title2)
                            .foregroundStyle(gold)
                            .frame(width: 44, height: 44)
                            .background(gold.opacity(0.12))
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading) {
                            Text("Midnight Express")
                                .font(.headline)
                                .foregroundStyle(.primary)
                            
                            Text("500 pontos")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        
                        Button(action: {
                            if !drikResgatado && pontosUsuario >= 500 {
                                pontosUsuario -= 500
                                drikResgatado = true
                            }
                        }) {
                            Text(textoButton(resgatado: drikResgatado, custo: 500))
                                .font(.caption.bold())
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(corButton(resgatado: drikResgatado, custo: 500))
                                .foregroundStyle(drikResgatado || pontosUsuario < 500 ? Color.secondary : darkBlue)
                                .clipShape(Capsule())
                        }
                        .disabled(drikResgatado || pontosUsuario < 500)
                    }
                    .padding(16)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "cup.and.saucer")
                            .font(.title2)
                            .foregroundStyle(gold)
                            .frame(width: 44, height: 44)
                            .background(gold.opacity(0.12))
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading) {
                            Text("Crème Brûlée")
                                .font(.headline)
                                .foregroundStyle(.primary)
                            
                            Text("800 pontos")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        
                        Button(action: {
                            if !sobremesaResgatada && pontosUsuario >= 800 {
                                pontosUsuario -= 800
                                sobremesaResgatada = true
                            }
                        }) {
                            Text(textoButton(resgatado: sobremesaResgatada, custo: 800))
                                .font(.caption.bold())
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(corButton(resgatado: sobremesaResgatada, custo: 800))
                                .foregroundStyle(sobremesaResgatada || pontosUsuario < 800 ? Color.secondary : darkBlue)
                                .clipShape(Capsule())
                        }
                        .disabled(sobremesaResgatada || pontosUsuario < 500)
                    }
                    .padding(16)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "lock.badge.clock")
                            .font(.title2)
                            .foregroundStyle(gold)
                            .frame(width: 44, height: 44)
                            .background(gold.opacity(0.12))
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading) {
                            Text("Reserva Prioritária")
                                .font(.headline)
                                .foregroundStyle(.primary)
                            
                            Text("Disponível no Nível PLATINUM")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .multilineTextAlignment(.center)
                        }
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Bloqueado")
                                .font(.caption.bold())
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(.gray.opacity(0.2))
                                .foregroundStyle(.secondary)
                                .clipShape(Capsule())
                        }
                        .disabled(true)
                    }
                    .padding(16)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "lock.badge.clock")
                            .font(.title2)
                            .foregroundStyle(gold)
                            .frame(width: 44, height: 44)
                            .background(gold.opacity(0.12))
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading) {
                            Text("Garrafa de Espumante")
                                .font(.headline)
                                .foregroundStyle(.primary)
                            
                            Text("Disponível no Nível PLATINUM")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .multilineTextAlignment(.center)
                        }
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Bloqueado")
                                .font(.caption.bold())
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(.gray.opacity(0.2))
                                .foregroundStyle(.secondary)
                                .clipShape(Capsule())
                        }
                        .disabled(true)
                    }
                    .padding(16)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)
                 
                }
                
            }
            .padding(.vertical)

        }
        .navigationTitle("CLUBE DE BENEFÍCIOS")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func textoButton(resgatado: Bool, custo: Int) -> String {
        if resgatado {
            return "Resgatado"
        } else if pontosUsuario < custo {
            return "Insuficiente"
        } else {
            return "Resgatar"
        }
    }
    
    func corButton(resgatado: Bool, custo: Int) -> Color {
        if resgatado {
            return .gray.opacity(0.3)
        } else if pontosUsuario < custo {
            return .red.opacity(0.15)
        } else {
            return gold
        }
    }
}

#Preview {
    NavigationStack {
        clubView()
    }
}
