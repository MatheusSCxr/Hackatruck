//
//  Rosa.swift
//  HackaTruck_Desafio 3
//
//  Created by Turma02-24 on 21/03/25.
//

import Foundation

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Image(systemName:"paintbrush")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 400,height: 300)
                .foregroundColor(.pink)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    RosaView()
}
