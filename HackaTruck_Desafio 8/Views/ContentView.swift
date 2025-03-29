//
//  ContentView.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack(){
            AsyncImage(url: URL(string:  "https://images.unsplash.com/photo-1630051822408-b80dde2f5681?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")){ result in
                result.image?
                    .resizable()
                    .scaledToFill()
                    .frame(width:400,height: 880)
                    .clipped()
                    .opacity(0.7)
            }
            VStack(){
                Spacer()
                Text("Biblioteca de Jogos")
                    .font(.system(.largeTitle))
                    .bold()
                    .frame(width: 350,height: 100)
                    .background(Color.white)
                    .cornerRadius(20)
                Spacer()
                Spacer()
            }
            VStack(){
                ScrollView(.horizontal){
                    HStack{
                        ForEach(viewModel.jogos, id: \.self){ game in
                            VStack(){
                                AsyncImage(url: URL(string: "https://cdn-icons-png.flaticon.com/512/1373/1373568.png")){ image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(10)
                                }placeholder: {
                                    Image(systemName: "photo.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Text(game.titulo ?? "<no_name>")
                                    .foregroundStyle(Color.black)
                                    .font(.title2)
                                    .bold()
                                Button("Mais informações") {
                                    showSheet.toggle()
                                }
                                .font(.title3)
                                .foregroundStyle(Color.white)
                                .bold()
                                .padding(5)
                                .background(Color.black)
                                .cornerRadius(5)
                                .sheet(isPresented: $showSheet) {
                                    InfoView(jogo: game)
                                }
                                Spacer()
                            }
                            .frame(width: 200, height: 200)
                            .background()
                            .cornerRadius(10)
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 800)
                    }
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
