//
//  ContentView.swift
//  HackaTruck_Desafio 4
//
//  Created by Turma02-24 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    @State public var nome: String
    @State public var sobrenome: String
    @State public var botao_sheet: Bool = false
    
    var body: some View{
        
        NavigationStack{
            ZStack(){
                Color.background
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    Image("logo-topo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    Spacer()
                    VStack{
                        NavigationLink(LocalizedStringKey("Modo 1"), destination: Modo1View(nome: nome,sobrenome: sobrenome))
                            .padding(.horizontal, 100)
                            .padding(.vertical, 35)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        NavigationLink(LocalizedStringKey("Modo 2"), destination: Modo1View(nome: nome,sobrenome: sobrenome))
                            .padding(.horizontal, 100)
                            .padding(.vertical, 35)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Button("Modo 3") {
                            botao_sheet.toggle()
                        }
                        .padding(.horizontal, 100)
                        .padding(.vertical, 35)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .sheet(isPresented: $botao_sheet){}
                            content: {
                                Modo1View(nome: nome, sobrenome: sobrenome)
                            }
                        
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView(nome: "", sobrenome: "")
}
