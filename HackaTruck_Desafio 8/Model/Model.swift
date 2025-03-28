//
//  Model.swift
//  HackaTruck_Desafio 8
//
//  Created by Turma02-24 on 27/03/25.
//

import Foundation

struct GameAPI: Decodable, Hashable{
    let titulo: String?
    let plataforma: String?
    let genero: [String]?
    let desenvolvedora: String?
    let publicadora: String?
    let data_lancamento: String?
    let classificacao_etaria: String?
    let descricao: String?
    let personagens_principais: [String]?
    let imagem_capa: String?
    let preco: Double?
}
