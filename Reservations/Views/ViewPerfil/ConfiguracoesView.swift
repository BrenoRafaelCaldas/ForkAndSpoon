//
//  ConfiguracoesView.swift
//  Reservations
//
//  Created by B7 RAFA on 09/11/2026.
//

import SwiftUI

struct ConfiguracoesView: View {
    
    @AppStorage("lembreteReserva") private var lembreteReserva: Bool = true
    @AppStorage("novidadesClub") private var novidadesClub: Bool = false
    @AppStorage("ofertasEspeciais") private var ofertasEspeciais: Bool = false
    @AppStorage("apareciaApp") private var apareciaAPP: String = "system"

    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)

    
    var body: some View {
        
        Form {
            
            //Notificações Push
            Section {
                
                Toggle(isOn: $lembreteReserva) {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Lembretes de Reserva")
                                .font(.body)
                            
                            Text("Receba avisos 2h antes da sua reserva")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    } icon: {
                        Image(systemName: "bell.badge.fill")
                            .foregroundStyle(gold)
                    }
                }
                .tint(darkBlue)
                
                Toggle(isOn: $novidadesClub) {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Novidades do Club F&S")
                                .font(.body)
                            
                            Text("Avisos de novos benfícios e pontos")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    } icon: {
                        Image(systemName: "coloncurrencysign.circle.fill")
                            .foregroundStyle(gold)
                    }
                }
                .tint(darkBlue)
                
                Toggle(isOn: $ofertasEspeciais) {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Eventos Especiais")
                                .font(.body)
                            
                            Text("Receba alerta sobre eventos exclusivos")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    } icon: {
                        Image(systemName: "party.popper.fill")
                            .foregroundStyle(gold)
                    }
                }
                .tint(darkBlue)
            } header: {
                Text("Notificações Push")
            } footer: {
                Text("Você pode alterar as permissões gerais de notificações a qualquer momento nos Ajustes do seu iPhone.")
                    .font(.caption)
            }
            
            // Aparência e Tema
            Section {
                Picker(selection: $apareciaAPP) {
                    Text("System").tag("system")
                    Text("Light").tag("light")
                    Text("Dark").tag("dark")
                } label: {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Aparencia do App")
                                .font(.body)
                            
                            Text("Configure o tema visual")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    } icon: {
                        Image(systemName: "paintpalette.fill")
                            .foregroundStyle(gold)
                    }
                }
                .pickerStyle(.navigationLink)
            } header: {
                Text("Interface")
            } footer: {
                Text("A opção 'system' se adapta automaticamente ao modo definido nos Ajustes do seu iPhone.")
                    .font(.caption)
            }
            
            // Sobre & Suporte
            Section {
                NavigationLink(destination: helpView()) {
                    Label {
                        Text("Cental de Ajuda & Atendimento")
                    } icon: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundStyle(gold)
                    }
                }
                
                NavigationLink(destination: TermosDeUsoView()) {
                    Label {
                        Text("Termos de Uso")
                    } icon: {
                        Image(systemName: "doc.text.fill")
                            .foregroundStyle(gold)
                    }
                }
                
                NavigationLink(destination: PoliticaPrivacidadeView()) {
                    Label {
                        Text("Política de Privacidade")
                    } icon: {
                        Image(systemName: "lock.shield.fill")
                            .foregroundStyle(gold)
                    }
                }
            } header: {
                Text("Sobre & Suporte")
            }
            
            // Informações do App
            Section {
                HStack {
                    Text("Versão do App")
                    Spacer()
                    Text("1.0.0(Build 1)")
                        .foregroundStyle(.gray)
                }
                
                HStack {
                    Text("Desenvolvido por")
                    Spacer()
                    Text("BrisaTech")
                        .fontWeight(.semibold)
                        .foregroundStyle(gold)
                    
                }
            } header: {
                Text("Informações")
            } footer: {
                VStack {
                    Text("Fork & Spoon Restaurante © 2026")
                }
                .frame(maxWidth: .infinity)
                .font(.caption)
                .foregroundStyle(.tertiary)
                .padding(.top, 8)
            }
          

        }
        .navigationTitle("CONFIGURAÇÕES")
        .navigationBarTitleDisplayMode(.inline)
        .preferredColorScheme(
            apareciaAPP == "light" ? .light :
            apareciaAPP == "dark" ? .dark : nil
        )
        
    }
    
}

#Preview {
    NavigationStack {
        ConfiguracoesView()
    }
}
