//
//  MenuView.swift
//  Reservations
//
//  Created by B7 RAFA on 23/11/2025.
//

import SwiftUI

struct MenuView: View {
    
    let entradas : [PratoItem]  = [
        
        PratoItem(name: "Carpaccio de File Mignon",
                  imagem: "Entrada1",
                  preco: "€24,99",
                  descricao:"Lâminas finas de filé mignon, parmesão, rúcula e azeite trufado"),
        
        PratoItem(name:"Tartar de Salmão com Caviar",
                  imagem: "Entrada2",
                  preco: "€22,99",
                  descricao: "Cubos de salmão fresquíssimo temperados com limão siciliano e ervas, montados em formato elegante. Finalizado com caviar e creme cítrico leve, oferecendo frescor e sofisticação em cada garfada."),
        
        PratoItem(name: "Burrata trufada com tomate confit e pesto de manjericão",
                  imagem: "Entrada3",
                  preco: "€19,99",
                  descricao: "Cortado finamente com lascas de parmesão e finalizado com azeite trufado e rúcula baby fresca."),
        
        PratoItem(name: "Foie gras selado com compota de figo e brioche tostado",
                  imagem: "Entrada4",
                  preco: "€22,99",
                  descricao: "Foie gras levemente selado, mantendo sua textura amanteigada, servido com compota de figo artesanal e brioche tostado. Um contraste perfeito entre doçura, untuosidade e elegância.")
    ]
    
    let pratosPrincipaias : [PratoItem] = [
        
        PratoItem(name: "Polvo grelhado com batatas ao murro e aioli de limão siciliano",
                  imagem: "Principal1",
                  preco: "€45,99",
                  descricao: "Polvo grelhado macio e levemente tostado, servido com batatas ao murro douradas e um aioli de limão siciliano que traz frescor e cremosidade ao prato."),
        
        PratoItem(name: "Filé mignon ao molho de vinho do Porto com purê trufado",
                  imagem: "Principal2",
                  preco: "€49,99",
                  descricao: "Filé mignon grelhado ao ponto perfeito, servido com um rico molho de vinho do Porto e acompanhado de um purê de batatas cremoso aromatizado com trufas."),
        
        PratoItem(name: "Magret de pato com laranja caramelizada e batata dauphinoise",
                  imagem: "Principal3",
                  preco: "€47,49",
                  descricao: "Combina o pato suculento com o doce cítrico da laranja e a cremosidade das batatas gratinadas, criando um prato elegante e equilibrado."),
        
        PratoItem(name: "Bife Ancho Dry Aged com Manteiga de Ervas",
                  imagem: "Principal4",
                  preco: "€49,99",
                  descricao: "Bife ancho maturado dry aged, grelhado até obter crosta dourada e sabor intenso. Servido com manteiga de ervas aromáticas e legumes assados caramelizados, equilibrando rusticidade e elegância no prato.")
    ]
    
    let sobremesas : [PratoItem]  = [
        
        PratoItem(name: "Pera ao Vinho com Crumble de Especiarias e Creme Inglês",
                  imagem: "Sobremesa1",
                  preco: "€34,99",
                  descricao:"Pera cozida lentamente em vinho tinto aromatizado com canela, anis e casca de cítricos, adquirindo cor rubi e perfume intenso. Servida com crumble crocante de especiarias e creme inglês aveludado, criando camadas de textura e sabor"),
        
        PratoItem(name:"Pavlova com Frutas Frescas e Creme Diplomata",
                  imagem: "Sobremesa2",
                  preco: "€32,99",
                  descricao: "Merengue crocante por fora e macio por dentro, coberto com creme diplomata leve e sedoso. Finalizada com frutas frescas da estação, trazendo cor, frescor e delicadeza a uma sobremesa elegante e fotogênica."),
        
        PratoItem(name: "Coulant de Chocolate Belga com Sorvete de Pistache",
                  imagem: "Sobremesa3",
                  preco: "€34,99",
                  descricao: "Bolo individual de chocolate belga com interior cremoso e quente que escorre ao ser aberto. Servido com sorvete artesanal de pistache, que equilibra a intensidade do chocolate com frescor e notas suaves de castanha."),
        
        PratoItem(name: "Tartelette de Limão Siciliano com Merengue Tostado",
                  imagem: "Sobremesa4",
                  preco: "€30,99",
                  descricao: "Base crocante de massa doce recheada com creme de limão siciliano de acidez vibrante. Finalizada com merengue italiano delicadamente tostado, criando um contraste entre crocante, cremoso e leveza cítrica.")
    ]
        
    var body: some View {
            
        ScrollView {
            
            VStack(alignment: .center, spacing: 32) {
                
                VStack(alignment: .center, spacing: 12) {
                    
                    Text("Entradas")
                        .font(.system(size: 35, weight: .bold, design: .serif))
                        .padding(.top, 40)
                        .padding(.bottom, 20)
                        .foregroundStyle(.white)
                    
                    
                    ForEach(entradas) { item in
                        PratoCardView(prato: item)
                    }
                    
                    VStack(alignment: .center, spacing: 12) {
                        
                        Text("Pratos Principais")
                            .font(.system(size: 35, weight: .bold, design: .serif))
                            .padding(.top, 40)
                            .padding(.bottom, 20)
                            .foregroundStyle(.white)
                        
                        ForEach(pratosPrincipaias) { item in
                            PratoCardView(prato: item)
                        }
                    }
                    
                    VStack(alignment: .center, spacing: 12) {
                        
                        Text("Sobremesas")
                            .font(.system(size: 35, weight: .bold, design: .serif))
                            .padding(.top, 40)
                            .padding(.bottom, 20)
                            .foregroundStyle(.white)
                        
                        ForEach(sobremesas) { item in
                            PratoCardView(prato: item)
                        }
                    }
                    
                }
                
            }
            .padding(28)
            .padding(.bottom, 10)
           
        }
        .ignoresSafeArea()
        .background(
            LinearGradient (
                colors: [
                    Color(red: 0.18, green: 0.15, blue: 0.08),
                    Color(red: 0.81, green: 0.67, blue: 0.38),
                    Color(red: 0.22, green: 0.25, blue: 0.40)
                ], startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    }
}

#Preview {
    MenuView()
}
