//
//  ContentView.swift
//  HackaTruck_Desafio 5
//
//  Created by Turma02-24 on 24/03/25.
//

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

import SwiftUI

struct ContentView: View {
    var musicas = [ Song(id: 1, name: "Blocks", artist: "Minecraft - Blocks", capa: "https://static.wikia.nocookie.net/minecraft/images/f/fc/Blocks.png/revision/latest/scale-to-width-down/250?cb=20210107194858"),Song(id: 2, name: "Pigstep", artist: "Minecraft - Pigstep", capa: "https://static.wikia.nocookie.net/minecraft/images/7/79/Pigstep.png/revision/latest?cb=20210107194956"),Song(id: 3, name: "Far", artist: "Minecraft - Far", capa: "https://static.wikia.nocookie.net/minecraft/images/e/ea/Far.png/revision/latest?cb=20210107194813"),Song(id: 4, name: "Chirp", artist: "Minecraft - Chirp", capa: "https://static.wikia.nocookie.net/minecraft/images/3/33/Chirp.png/revision/latest?cb=20210107194836"),Song(id: 5, name: "Mall", artist: "Minecraft - Mall", capa: "https://static.wikia.nocookie.net/minecraft/images/9/91/Mall.png/revision/latest?cb=20210107194731"),Song(id: 6, name: "Cat", artist: "Minecraft - Cat", capa: "https://static.wikia.nocookie.net/minecraft/images/0/05/Cat.png/revision/latest?cb=20210107194023")]
    
    var body: some View {
        NavigationStack(){
            ZStack(){
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView(){
                    AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2iZgUdIo5C7VBXKyyuxsXotUcmgEAt8l3TAW5vt02hlHy-U_kzhuFIhE04g0WOlAsmU&usqp=CAU")){ result in
                        result.image?
                            .frame(width: 200,height: 200)
                            .clipped()
                        }
                    .padding(.bottom, 20)
                    
                    HStack(){
                        VStack(){
                            Text("HackaFM")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .font(.title)
                                .bold()
                            HStack(){
                                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2iZgUdIo5C7VBXKyyuxsXotUcmgEAt8l3TAW5vt02hlHy-U_kzhuFIhE04g0WOlAsmU&usqp=CAU")){ result in
                                    result.image?
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                    }

                                Text("HackaSongs")
                                    .foregroundStyle(.white)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(5)
                            }
                        }
                    
                        Spacer()
                    }
                    .padding(.bottom, 25)

                    HStack(){
                        VStack(){
                            ForEach(musicas){e in
                                NavigationLink(destination: musicaView(musica: e)){
                                    HStack(){
                                        AsyncImage(url: URL(string: e.capa)){ result in
                                            result.image?
                                                .resizable()
                                                .frame(width: 50,height: 50)
                                                .padding(5)
                                            }
                                        VStack(alignment: .leading){
                                            Text(e.name)
                                                .foregroundStyle(.white)
                                                .bold()
                                            Text(e.artist)
                                                .foregroundStyle(.white)
                                        }
                                        Spacer()
                                        Image(systemName:"ellipsis")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                        
                        Spacer()
                    }
                    
                    HStack(){
                        Text("Sugestões")
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                            .padding(.top, 70)
                        
                        Spacer()
                    }

                    ScrollView(.horizontal){
                        HStack(){
                            AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/minecraft/images/8/84/Mellohi.png/revision/latest?cb=20210107194601")){ result in
                                result.image?
                                    .frame(width: 200,height: 200)
                                    .clipped()
                                Text("Mellohi")
                                    .foregroundStyle(.white)
                                }
                            
                            AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/minecraft/images/9/93/Wait.png/revision/latest?cb=20210107194250")){ result in
                                result.image?
                                    .frame(width: 200,height: 200)
                                    .clipped()
                                Text("Wait")
                                    .foregroundStyle(.white)
                                }
                            
                            AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/minecraft/images/3/3c/Stal.png/revision/latest?cb=20210107194449")){ result in
                                result.image?
                                    .frame(width: 200,height: 200)
                                    .clipped()
                                Text("Stal")
                                    .foregroundStyle(.white)
                                }
                        }
                    }
                    
                }
            }
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
