//
//  Lista.swift
//  HackaTruck_Desafio 3
//
//  Created by Turma02-24 on 21/03/25.
//

import Foundation

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationView{
            VStack (){
                List{
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName:"paintbrush")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName:"paintbrush.pointed")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName:"paintpalette")
                    }
                }
            }
            .navigationTitle("List")

        }
    }
}

#Preview {
    ListaView()
}
