//
//  PoliticaPrivacidadeView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2026.
//

import SwiftUI

struct PoliticaPrivacidadeView: View {
  
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Política de Privacidade")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Divider()
                
             secaoTexto(
                titulo: "1. Informações que Coletamos",
                corpo: "Coletamos apenas os dados necessários para garantir sua experiência gastronômica: nome completo, email, telefone para confirmação de reservas, preferências alimentares declaradas e histórico de pontuação do Club Fork & Spoon."
             )
                
                secaoTexto(titulo: "2. Como Utilizamos seus Dados",
                           corpo: "Seus dados são utilizados exclusivamente para gerenciar suas reservas no Fork & Spoon, personalizar suas preferências à mesa e enviar notificações sobre seus pontos resgatados ou eventos exclusivos, caso autorizadas por você."
                )
                
                secaoTexto(titulo: "3. Compartilhamento",
                           corpo: "Não vendemos nem compartilhamos suas infomações pessoais com terceiros. Todos os dados são armazenados utilizando criptografia padrão de mercado e protocolos de segurança avançados."
                )
                
                secaoTexto(titulo: "4. Seus Direitos de Privacidade",
                           corpo: "Você pode solicitar a alteração, exportação ou exclusão definitiva dos seus dados do nosso banco de dados a qualquer momento entrando em contato pela Central de Ajuda ou ajustando suas configurações no app."
                )
            }
            .padding()
        }
        .navigationTitle("Privacidade")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    private func secaoTexto(titulo: String, corpo: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(titulo)
                .font(.headline)
                .foregroundStyle(.primary)
            
            Text(corpo)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineSpacing(4)
        }
    }
}

#Preview {
    PoliticaPrivacidadeView()
}
