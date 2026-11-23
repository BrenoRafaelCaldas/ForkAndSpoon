//
//  TermosDeUsoView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2026.
//

import SwiftUI

struct TermosDeUsoView: View {
    
    let darkBlue = Color(red: 0.1137, green: 0.1647, blue: 0.3961)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Termos de Uso")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Divider()
                
             secaoTexto(
                titulo: "1. Aceitação dos Termos",
                corpo: "Ao utilizar o aplicativo Fork & Spoon, você concorda em cumprir os Termos de Uso. O aplicativo destina-se ao agendamento de reservas, consulta ao menu e participação no programa de fidelidade Club Fork & Spoon."
             )
                
                secaoTexto(titulo: "2. Reservas e Tolerância",
                           corpo: "As reservas efetuadas pelo aplicativo possuem uma tolerância de atraso de 15 minutos. Após esse período, a mesa poderá ser liberada para outros clientes. Cancelamentos devem ser realizados com mínimo 2 horas de antecedência."
                )
                
                secaoTexto(titulo: "3. Programa de Fidelidade (Club)",
                           corpo: "Os pontos acumulados no Club Fork & Spoon são pessoais, intrasferíveis e não possuem valor monetário para resgate em dinheiro. O restaurante se reserva o direito de alterar as recompensas disponíveis mediante aviso prévio no aplicativo."
                )
                
                secaoTexto(titulo: "4. Conduta do Usuário",
                           corpo: "Os usuários se compromete a fornecer infomações verdadeiras no cadastro da reserva. O uso indevido da plataforma ou o não comparecimento recorrente sem aviso prévio poderá resultar na suspensão da conta."
                )
            }
            .padding()
        }
        .navigationTitle("Termos de Uso")
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
    TermosDeUsoView()
}
