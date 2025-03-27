//
//  ViewModel.swift
//  HackaTruck_Desafio 7
//
//  Created by Turma02-24 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var personagens: [PotterAPI] = []
    
    func fetch() {
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else {
            return //se a url não estiver disponível
        }
        
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _ , error in
            guard let data = data, error == nil else{
                return //retornar nulo caso ocorra um erro ou não contém alguma data
            }
            
            //tentar decodificar para a struct em model (PotterAPI)
            do {
                let parsed =  try JSONDecoder().decode([PotterAPI].self, from: data)
                
                DispatchQueue.main.async {
                    //alimentar o struct com os dados, objeto por objeto
                    self?.personagens = parsed
                }
            } catch{
                //caso a decodificação falhe
                print(error)
            }
        }
        //inicia a task para buscar os dados
        task.resume()
    }
}
