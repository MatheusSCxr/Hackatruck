//
//  InfoView.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var jogo: GameAPI
    
    var body: some View {
        ZStack(){
            Color.orange
                .ignoresSafeArea(.all)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 365, height: 600)
                .cornerRadius(20)
                .overlay(
            VStack(alignment: .leading) {
                Spacer()
                Text("\(jogo.titulo ?? "")")
                    .foregroundStyle(Color.black)
                    .font(.title)
                    .bold()
                    .frame(width: 300, height: 75, alignment: .leading)
                    .lineLimit(2)
                Text("Plataforma: \n    \(jogo.plataforma ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Gêneros: \n     \(jogo.genero ?? [])")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Desenvolvedora: \n    \(jogo.desenvolvedora ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Publicadora: \n    \(jogo.publicadora ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Data de Lançamento: \n    \(jogo.data_lancamento ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Classificação Etária: \n    \(jogo.classificacao_etaria ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Descrição: \n    \(jogo.descricao ?? "")")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Personagens Principais: \n    \(jogo.personagens_principais ?? [])")
                    .foregroundStyle(Color.black)
                    .bold()
                Text("Preço:\n    $\(jogo.preco ?? 0, specifier: "%.2f")")
                    .foregroundStyle(Color.black)
                    .bold()
                Spacer()
                .font(.title)
                .foregroundColor(.black)
            }
                .padding(.leading, 5)
            )
            VStack(){
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
                    .cornerRadius(20)
                    .padding(.leading, -25)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    InfoView(jogo:  .constant(GameAPI(titulo: "placeholder", plataforma: "placeholder", genero: ["placeholder"], desenvolvedora: "placeholder", publicadora: "placeholder", data_lancamento: "placeholder", classificacao_etaria: "placeholder", descricao: "placeholder", personagens_principais: ["placeholder"], imagem_capa: "placeholder", preco: 0.0)))
}
