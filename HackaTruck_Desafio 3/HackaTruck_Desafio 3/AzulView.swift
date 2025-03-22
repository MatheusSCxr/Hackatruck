//
//  Azul.swift
//  HackaTruck_Desafio 3
//
//  Created by Turma02-24 on 21/03/25.
//

import Foundation

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Image(systemName:"paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 400,height: 300)
                .foregroundColor(.blue)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    AzulView()
}
