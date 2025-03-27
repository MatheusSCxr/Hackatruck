//
//  ContentView.swift
//  HackaTruck_Desafio 7
//
//  Created by Turma02-24 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack(){
            Color.darkRed
            AsyncImage(url: URL(string:  "https://contentful.harrypotter.com/usf1vwtuqyxm/71J6YPxNauhFABbjHpGluJ/631bd6980b0a430d5b476ef331abb2b5/release_1_hogwarts.png")){ result in
                result.image?
                    .resizable()
                    .frame(width:400,height: 880)
                    .clipped()
                    .opacity(0.3)
            }
            
            VStack(){
                AsyncImage(url: URL(string:  "https://lh3.googleusercontent.com/0YiApMHe7p_rMza2gqakDFIC25EgrSKDjoBWkM4loKbJyqeO2Hw3OtBF4tb5iz0hfUFEa5gj1nNanYOFnaz9VI_6=s1280-w1280-h800")){ result in
                    result.image?
                        .resizable()
                        .frame(width: 400)
                        .scaledToFit()
                        .clipped()
                        .opacity(0.6)
                }
                ScrollView{
                    VStack{
                        ForEach(viewModel.personagens){ perso in
                            HStack(){
                                AsyncImage(url: URL(string: perso.image ?? "<no_image")){ image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                        .padding(.leading, 20)
                                }placeholder: {
                                    Color.gray
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 100,height: 100)
                                        .padding(.leading, 20)
                                }
                                Text(perso.name ?? "<no_name>")
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }
                .frame(height: 600)
                
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
