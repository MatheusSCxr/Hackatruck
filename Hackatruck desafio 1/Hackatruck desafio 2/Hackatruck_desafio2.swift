//
//  Hackatruck_desafio2.swift
//  Hackatruck desafio 1
//
//  Created by Matheus Coxir on 20/03/25.
//


import SwiftUI

struct ContentView: View {
    @State private var distancia : Float = 0
    @State private var tempo : Float = 0
    @State private var velocidade : Float = 0
    @State private var bgcor : Color = .gray
    @State private var imagem : String = "image"

    var body: some View {
        ZStack{
            Color(bgcor)
                .ignoresSafeArea(.all)
            HStack{
                VStack{
                    Text("Digite a distância (km): ")
                    TextField("Digite um valor", value: $distancia, format: .number)
                        .frame(alignment: .center)
                        .background(Color.white)
                        .fixedSize()
                        .cornerRadius(12)
                        .multilineTextAlignment(.center)
                    
                    Text("Digite o tempo (h): ")
                    TextField("Digite um valor", value: $tempo, format: .number)
                        .frame(alignment: .center)
                        .background(Color.white)
                        .fixedSize()
                        .cornerRadius(12)
                        .multilineTextAlignment(.center)
                    
                    Button("Calcular"){
                        velocidade = distancia / tempo
                        
                        if (velocidade >= 0 && velocidade < 10){
                            imagem = "tartaruga"
                            bgcor = Color.verdin
                        }
                        else if (velocidade >= 10 && velocidade < 30){
                            imagem = "elefante"
                            bgcor = Color.azulzin
                        }
                        else if (velocidade >= 30 && velocidade < 70){
                            imagem = "avestruz"
                            bgcor = Color.laranjin
                        }
                        else if (velocidade >= 70 && velocidade < 90){
                            imagem = "leao"
                            bgcor = Color.amarelin
                        }
                        else if (velocidade >= 90 && velocidade <= 130){
                            imagem = "guepardo"
                            bgcor = Color.vermelhin
                        }
                        
                    }
                    .padding(10)
                    .foregroundStyle(Color.orange)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    Text(velocidade.formatted() + " km/h")
                        .font(.largeTitle)
                        .padding(30)
                    
                    Image(imagem)
                            .resizable()
                            .frame(width: 250, height: 250)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                    ZStack{
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 290, height: 180)
                        
                        HStack(){
                            VStack(){
                                Text("TARTARUGA")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("ELEFANTE")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("AVESTRUZ")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("LEÃO")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("Guepardo")
                                    .foregroundStyle(Color.white)                  .padding(.bottom, 1)
                            }
                            VStack(){
                                Text("(0 - 9.9km/h)")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("(10 - 29.9km/h)")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("(30 - 69.9km/h)")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("(70 - 89.9km/h)")
                                    .foregroundStyle(Color.white)
                                    .padding(.bottom, 1)
                                Text("(90 - 130km/h)")
                                    .foregroundStyle(Color.white)                  .padding(.bottom, 1)
                            }
                            VStack{
                                Circle()                                .foregroundColor(.verdin)
                                    .frame(width: 20)
                                Circle()                                .foregroundColor(.azulzin)
                                    .frame(width: 20)
                                Circle()                                .foregroundColor(.laranjin)
                                    .frame(width: 20)
                                Circle()                                .foregroundColor(.amarelin)
                                    .frame(width: 20)
                                Circle()                                .foregroundColor(.vermelhin)
                                    .frame(width: 20)
                            }
                                                        
                        }
                        
                    }
                    
    
                }
                
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}


