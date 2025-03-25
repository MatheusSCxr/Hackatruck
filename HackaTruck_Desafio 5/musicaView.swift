//
//  musicaView.swift
//  HackaTruck_Desafio 5
//
//  Created by Turma02-24 on 24/03/25.
//

import SwiftUI

struct musicaView: View {
    @State var musica : Song = Song(id: 0, name: "placeholder", artist: "placeholder", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2iZgUdIo5C7VBXKyyuxsXotUcmgEAt8l3TAW5vt02hlHy-U_kzhuFIhE04g0WOlAsmU&usqp=CAU")
    
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(){
                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2iZgUdIo5C7VBXKyyuxsXotUcmgEAt8l3TAW5vt02hlHy-U_kzhuFIhE04g0WOlAsmU&usqp=CAU")){ result in
                    result.image?
                        .frame(width: 200,height: 200)
                        .clipped()
                        .padding(.top, 150)
                    }
                Text(musica.name)
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(musica.artist)
                    .foregroundStyle(.white)
                    .font(.subheadline)
                Spacer()
                HStack(){
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 30,height: 35)
                        .padding(10)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 30,height: 35)
                        .padding(20)
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 60,height: 65)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 30,height: 35)
                        .padding(20)
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 30,height: 35)
                        .padding(10)

                }
                Spacer()
            }
        }
    }
}

#Preview {
    musicaView()
}
