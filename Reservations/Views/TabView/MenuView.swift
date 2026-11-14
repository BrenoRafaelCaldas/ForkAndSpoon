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
                  preco: "€17,99",
                  descricao:"Lâminas finas de filé mignon, parmesão, rúcula fresca e azeite.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Tartar de Salmão",
                  imagem: "Entrada2",
                  preco: "€21,99",
                  descricao:"Salmão fresco temperado com limão siciliano, caviar e creme cítrico.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Burrata trufada com tomate confit",
                  imagem: "Entrada3",
                  preco: "€15,99",
                  descricao: "Burrata cremosa com tomates confitados, pesto de manjericão e azeite trufado.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Foie gras selado com compota de figo",
                  imagem: "Entrada4",
                  preco: "€23,99",
                  descricao: "Foie gras selado com compota artesanal de figo e brioche levemente tostado.",
                  categoria: .entradas
                 )
    ]
    
    let pratosPrincipaias : [PratoItem] = [
        
        PratoItem(name: "Polvo grelhado com batatas ao murro",
                  imagem: "Principal1",
                  preco: "€37,99",
                  descricao: "Polvo grelhado macio, batatas ao murro e um aioli de limão siciliano.",
                  categoria: .pratosPrincipais
),
        
        PratoItem(name: "Filé mignon ao molho de vinho do Porto",
                  imagem: "Principal2",
                  preco: "€35,99",
                  descricao: "Filé mignon ao molho de vinho do Porto, acompanhado de um purê trufado.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Magret de pato com batata dauphinoise",
                  imagem: "Principal3",
                  preco: "€31,99",
                  descricao: "Magret de pato com molho de laranja caramelizada e batata dauphinoise.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Bife Ancho Dry Aged",
                  imagem: "Principal4",
                  preco: "€43,99",
                  descricao: "Bife ancho dry aged grelhado, manteiga de ervas e legumes assados.",
                  categoria: .pratosPrincipais
                 )
    ]
    
    let sobremesas : [PratoItem]  = [
        
        PratoItem(name: "Pera ao Vinho",
                  imagem: "Sobremesa1",
                  preco: "€11,99",
                  descricao:"Pera cozida em vinho tinto com especiarias, crumble crocante e creme inglês.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name:"Pavlova com Frutas Frescas",
                  imagem: "Sobremesa2",
                  preco: "€10,99",
                  descricao: "Merengue crocante com creme diplomata leve e frutas frescas.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Coulant com Sorvete de Pistache",
                  imagem: "Sobremesa3",
                  preco: "€13,99",
                  descricao: "Bolo quente de chocolate belga com recheio cremoso e sorvete de pistache.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Tartelette de Limão Siciliano",
                  imagem: "Sobremesa4",
                  preco: "€9,99",
                  descricao: "Massa crocante recheada com creme de limão siciliano e merengue tostado.",
                  categoria: .sobremesas
                 )
    ]
        
    let darkBlue = Color(red: 0.1003, green: 0.1023, blue: 0.2625)
    let gold = Color(red: 0.81, green: 0.67, blue: 0.30)
    
    @State private var categoriaSelecionada: CategoriaPrato = .entradas
    
    var body: some View {
    
            darkBlue
                .ignoresSafeArea()
                .overlay {
    
                    ScrollViewReader { proxy in
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            LazyVStack(alignment: .center, spacing: 20){
                                
                                if let primeiroPrato = pratosPrincipaias.first {
                                    SugestaoChefCard(prato: primeiroPrato)
                                        .padding(.top, 16)
                                }
                                
                                Section(header: TituloDinamicoView(categoria: .entradas)) {
                                    VStack(spacing: 12) {
                                        ForEach(entradas) { item in
                                            CartaoPratoView(prato: item)
                                        }
                                    }
                                }
                                .id(CategoriaPrato.entradas)

                                Section(header: TituloDinamicoView(categoria: .pratosPrincipais)) {
                                    VStack(spacing: 12) {
                                        ForEach(pratosPrincipaias) { item in
                                            CartaoPratoView(prato: item)
                                        }
                                    }
                                }
                                .id(CategoriaPrato.pratosPrincipais)
                                
                                Section(header: TituloDinamicoView(categoria: .sobremesas)) {
                                    VStack(spacing: 12) {
                                        ForEach(sobremesas) { item in
                                            CartaoPratoView(prato: item)
                                        }
                                    }
                                }
                                .id(CategoriaPrato.sobremesas)

                            }
                        }
                        .safeAreaInset(edge: .top) {
                            BarraCategoriaView(
                                categoriaSelecionada:  $categoriaSelecionada,
                                aoSelecionarCategoria: { CategoriaCliada in
                                    withAnimation(.easeInOut(duration: 0.4)) { proxy.scrollTo(CategoriaCliada, anchor: .top)
                                    }
                                }
                            )
                            .padding(.top, 8)
                            .background(darkBlue.opacity(0.95))
                        }
                    }
                }
    }
}


#Preview {
    
    MenuView()
}
