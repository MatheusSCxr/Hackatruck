//
//  InfoView.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var jogo : GameAPI = GameAPI(titulo: "placeholder", plataforma: "placeholder", genero: ["placeholder"], desenvolvedora: "placeholder", publicadora: "placeholder", data_lancamento: "placeholder", classificacao_etaria: "placeholder", descricao: "placeholder", personagens_principais: ["placeholder"], imagem_capa: "placeholder", preco: 0.0)
    
    var body: some View {
        ZStack(){
            Color.orange
                .ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                Spacer()
                Text("\(jogo.titulo ?? "")")
                    .foregroundStyle(Color.black)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.top, 80)
                    .padding(.bottom, 10)
                Text("Plataforma: \(jogo.plataforma ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Gêneros: \(jogo.genero ?? [])")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Desenvolvedora: \(jogo.desenvolvedora ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Publicadora: \(jogo.publicadora ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Data de Lançamento: \(jogo.data_lancamento ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Classificação Etária: \(jogo.classificacao_etaria ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Descrição: \(jogo.descricao ?? "")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Personagens Principais: \(jogo.personagens_principais ?? [])")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Text("Preço: R$ \(jogo.preco ?? 0, specifier: "%.2f")")
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)
                Spacer()
                Spacer()
                HStack{
                    Spacer()
                    Button("Voltar") {
                        dismiss()
                    }
                    .font(.title)
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(.black)
                    .cornerRadius(25)
                    .padding(.leading, -35)
                    Spacer()
                }
                .font(.title)
                .foregroundColor(.black)
                .padding(10)
            }
            .padding(.leading, 30)
            .frame()
        }
    }
}

#Preview {
    InfoView()
}
