//
//  ViewModel.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var jogos: [GameAPI] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/getCxr") else {
            return //se a url não estiver disponível
        }
        
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _ , error in
            guard let data = data, error == nil else{
                return //retornar nulo caso ocorra um erro ou não contém alguma data
            }
            
            //tentar decodificar para a struct em model (GameAPI)
            do {
                let parsed =  try JSONDecoder().decode([GameAPI].self, from: data)
                
                DispatchQueue.main.async {
                    //alimentar o struct com os dados, objeto por objeto
                    self?.jogos = parsed
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
