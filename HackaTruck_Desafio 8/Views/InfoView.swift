//
//  InfoView.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import SwiftUI

struct InfoView: View {
    
    @State var jogo : GameAPI = GameAPI(titulo: "placeholder", plataforma: "placeholder", genero: ["placeholder"], desenvolvedora: "placeholder", publicadora: "placeholder", data_lancamento: "placeholder", classificacao_etaria: "placeholder", descricao: "placeholder", personagens_principais: ["placeholder"], imagem_capa: "placeholder", preco: 0.0)
    
    var body: some View {
            VStack {
                Spacer()
                
                Text("Título: \(jogo.titulo)")
                    .foregroundStyle(Color.black)
                    .bold()
                Spacer()
                Text("Plataforma: \(jogo.plataforma)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Gênero: \(jogo.genero?.joined(separator: ", "))")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Desenvolvedora: \(jogo.desenvolvedora)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Publicadora: \(jogo.publicadora)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Data de Lançamento: \(jogo.data_lancamento)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Classificação Etária: \(jogo.classificacao_etaria)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Descrição: \(jogo.descricao)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Personagens Principais: \(jogo.personagens_principais?.joined(separator: ", "))")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Imagem da Capa: \(jogo.imagem_capa)")
                    .foregroundStyle(Color.black)
                Spacer()
                Text("Preço: R$ \(jogo.preco ?? 0, specifier: "%.2f")")
                    .foregroundStyle(Color.black)
                Spacer()
            }
            .background(Color.orange)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
}

#Preview {
    InfoView()
}
