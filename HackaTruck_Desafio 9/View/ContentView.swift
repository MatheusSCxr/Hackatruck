//
//  ContentView.swift
//  HackaTruck_Desafio 9
//
//  Created by Turma02-24 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
     
    var body: some View {
        ZStack(){
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            AsyncImage(url: URL(string:  "https://images.vexels.com/content/145358/preview/water-drop-falling-illustration-46ad43.png")){ result in
                                result.image?
                                    .resizable()
                                    .frame(width: 700)
                                    .scaledToFit()
                                    .clipped()
                                    .opacity(0.6)
                }
            VStack{
                ScrollView(){
                    ForEach(viewModel.sensor_values, id: \.self){ sensor in
                        Text(sensor.umidade ?? "<sem_valor>")
                            .foregroundStyle(Color.white)
                            .padding(5)
                            .background(Color.black)
                            .cornerRadius(10)
                            .padding(.bottom, 20)
                            .font(.title2)
                            .bold()
                    }
                    .frame(width: 1000)
                }
                .padding(.top, 100)
            }
            .padding()
            VStack(){
                Text("Dados do Sensor de Umidade")
                    .foregroundStyle(Color.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(5)
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding(.top, 50)
                Spacer()
            }
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
