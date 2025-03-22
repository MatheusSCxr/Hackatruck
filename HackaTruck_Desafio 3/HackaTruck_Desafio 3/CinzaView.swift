//
//  Cinza.swift
//  HackaTruck_Desafio 3
//
//  Created by Turma02-24 on 21/03/25.
//

import Foundation

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Image(systemName:"paintpalette")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 400,height: 300)
                .foregroundColor(.gray)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CinzaView()
}
