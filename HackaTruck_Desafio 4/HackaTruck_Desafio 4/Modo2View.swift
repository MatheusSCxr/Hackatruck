//
//  Modo2View.swift
//  HackaTruck_Desafio 4
//
//  Created by Turma02-24 on 21/03/25.
//

import SwiftUI

struct Modo2View: View {
    @State public var nome: String
    @State public var sobrenome: String

    var body: some View {
        NavigationStack{
            ZStack(){
                Color.background
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    Spacer()
                    Spacer()
                    VStack{
                        NavigationLink(destination: Modo3View(nome: nome,sobrenome: sobrenome), label: {
                            VStack{
                                TextField("Digite um Nome", text: $nome)
                                Text("Bem vindo, \(nome) \(sobrenome)")
                                TextField("Digite um sobrenome", text: $nome)
                            }
                        })
                            .padding(.horizontal, 100)
                            .padding(.vertical, 90)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Modo2View(nome: "",sobrenome: "")
}
