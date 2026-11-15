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
                  imagem: "Carpaccio",
                  preco: "€17,99",
                  descricao:"Lâminas finas de filé mignon, parmesão, rúcula fresca e azeite trufada.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Tartar de Salmão",
                  imagem: "Tartar",
                  preco: "€21,99",
                  descricao:"Salmão fresco temperado com limão siciliano, caviar e creme cítrico.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Burrata trufada com tomate confit",
                  imagem: "Burrata",
                  preco: "€15,99",
                  descricao: "Burrata cremosa com tomates confitados, pesto de manjericão e azeite trufado.",
                  categoria: .entradas
                 ),
        
        PratoItem(name: "Foie gras selado com compota de figo",
                  imagem: "Foie",
                  preco: "€23,99",
                  descricao: "Foie gras selado com compota artesanal de figo e brioche levemente tostado.",
                  categoria: .entradas
                 )
    ]
    
    let pratosPrincipaias : [PratoItem] = [
        
        PratoItem(name: "Polvo grelhado com batatas ao murro",
                  imagem: "Polvo",
                  preco: "€37,99",
                  descricao: "Polvo grelhado macio, batatas ao murro e um aioli de limão siciliano.",
                  categoria: .pratosPrincipais
),
        
        PratoItem(name: "Filé mignon ao molho de vinho do Porto",
                  imagem: "Bife",
                  preco: "€35,99",
                  descricao: "Filé mignon ao molho de vinho do Porto, acompanhado de um purê trufado.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Magret de pato com batata dauphinoise",
                  imagem: "Pato",
                  preco: "€31,99",
                  descricao: "Magret de pato com molho de laranja caramelizada e batata dauphinoise.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Robalo do Chef",
                  imagem: "Robalo",
                  preco: "€41,99",
                  descricao: "Robalo grelhado na brasa servido com purê de couve-flor trufado, legumes sazonais e beurre blanc cítrico.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Supremo de Frango Imperial",
                  imagem: "Frango",
                  preco: "€32,99",
                  descricao: "Supremo de frango dourado na manteiga, acompanhado de risoto de parmesão e molho de cogumelos porcini.",
                  categoria: .pratosPrincipais
                 ),
        
        PratoItem(name: "Bife Ancho Dry Aged",
                  imagem: "BifeDry",
                  preco: "€43,99",
                  descricao: "Bife ancho dry aged grelhado, manteiga de ervas e legumes assados.",
                  categoria: .pratosPrincipais
                 )
    ]
    
    let sobremesas : [PratoItem]  = [
        
        PratoItem(name: "Pera ao Vinho",
                  imagem: "Pera",
                  preco: "€11,99",
                  descricao:"Pera cozida em vinho tinto com especiarias e crumble crocante.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name:"Pavlova com Frutas Frescas",
                  imagem: "Pavlova",
                  preco: "€10,99",
                  descricao: "Merengue crocante com creme diplomata leve e frutas frescas.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Coulant com Sorvete de Pistache",
                  imagem: "Coulant",
                  preco: "€13,99",
                  descricao: "Bolo quente de chocolate belga com recheio cremoso e sorvete de pistache.",
                  categoria: .sobremesas
                 ),
        
        PratoItem( name: "Crème Brûlée de Baunilha Bourbon",
                   imagem: "Brulee",
                   preco: "€12,99",
                   descricao: "Creme de baunilha bourbon finalizado com fina camada de açúcar caramelizado.",
                   categoria: .sobremesas
                 ),
        
        PratoItem(name: "Tartelette de Limão Siciliano",
                  imagem: "Tartelette",
                  preco: "€9,99",
                  descricao: "Massa crocante recheada com creme de limão siciliano e merengue tostado.",
                  categoria: .sobremesas
                 )
    ]
    
    let bebidas : [PratoItem] = [
        
        PratoItem(name: "Coca Cola",
                  imagem: "CocaCola",
                  preco: "€4,99",
                  descricao: "Refrigerante clássico servido estupidamente gelado, com sabor marcante e refrescante.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name:"Fanta Laranja",
                  imagem: "FantaLaranja",
                  preco: "€4,49",
                  descricao: "Refrescância cítrica com o sabor vibrante da laranja e final levemente adocicado.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name:"Sprite",
                  imagem: "Sprite",
                  preco: "€4,49",
                  descricao: "Leve, refrescante e equilibrado, com notas de limão e toque gaseificado na medida certa.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Gold Smoked",
                  imagem: "GoldSmoked",
                  preco: "€19,49",
                  descricao: "Bourbon premium defumado em pau-de-canela, bitter de laranja e gelo cristalino moldado à mão.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Negroni Trufado",
                  imagem: "NegroniTrufado",
                  preco: "€16,99",
                  descricao: "Gin artesanal, Campari e vermute tinto infusionado com gotas sutis de azeite de trufa negra.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Midnight Express",
                  imagem: "Coffee",
                  preco: "€15,49",
                  descricao: "Vodka premium, licor de café e shot de espresso fresco, finalizado com espuma aveludada e grãos torrados.",
                  categoria: .sobremesas
                 ),
        
        PratoItem(name: "Cocktail Botanico",
                  imagem: "Botanico",
                  preco: "€14,49",
                  descricao: "Gin botânico com infusão de zimbro, xarope artesanal de alecrim e água tônica premium.",
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
                                
                                if let primeiroPrato = pratosPrincipaias.last {
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
                                
                                Section(header: TituloDinamicoView(categoria: .bebidas)) {
                                    VStack(spacing: 12) {
                                        ForEach(bebidas) { item in
                                            CartaoPratoView(prato: item)
                                        }
                                    }
                                }
                                .id(CategoriaPrato.bebidas)

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
