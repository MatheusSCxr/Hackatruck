//
//  SheetView.swift
//  HackaTruck_Desafio 4
//
//  Created by Turma02-24 on 21/03/25.
//

import SwiftUI

struct SheetView: View {
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
                        NavigationLink(destination: Modo1View(nome: nome,sobrenome: sobrenome), label: {
                            VStack{
                                Text("Nome: \(nome)")
                                    .padding(.bottom, 5)
                                Text("Sobrenome: \(sobrenome)")
                            }
                        })
                            .padding(.horizontal, 100)
                            .padding(.vertical, 50)
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
    SheetView(nome: "", sobrenome: "")
}
