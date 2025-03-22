//
//  ContentView.swift
//  HackaTruck_Desafio 3
//
//  Created by Turma02-24 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            ListaView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
