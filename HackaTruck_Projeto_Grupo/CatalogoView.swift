//
//  CatalogoView.swift
//  HackaTruck_Projeto_Grupo
//
//  Created by Turma02-24 on 03/04/25.
//

import SwiftUI

struct CatalogoView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let items = Array(1...50)
    
    var body: some View {
        ZStack(){
            Color.verdeIrriga
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                LazyVGrid(columns: columns) {
                    Section(){
                        ForEach(items, id: \.self) { item in
                            VStack {
                                Spacer()
                                Image(systemName:"leaf.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100,height: 150)
                                    .foregroundColor(.white)
                                    .background(Color.verdeIrriga)
                                    .clipShape(Circle())
                                Text("Planta")
                                    .font(.title3.bold())
                                    .padding(-10)
                            }
                            
                            .padding(.horizontal)
                        }
                    } header: {
                        Text("Catálogo de Plantas")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 30)
                    }
                }
                .padding(.top)
            }
            .background(Color.white)
            .padding(.vertical)
        }
        
    }
}

#Preview {
    CatalogoView()
}
