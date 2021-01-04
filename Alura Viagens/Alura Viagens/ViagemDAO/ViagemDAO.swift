//
//  ViagemDAO.swift
//  Alura Viagens
//
//  Created by Gabriel Santos Souza on 04/01/21.
//  Copyright © 2021 Gabriel Santos Souza. All rights reserved.
//

import UIKit

class ViagemDAO: NSObject {
    
    func retornaTodasAsViagens() -> Array<Viagem> {
        let ceara = Viagem(titulo: "Ceará", quantidadeDias: 3, preco: "1.800,59", caminhoImagem: "Assets/img1.png")
        let rioDeJaneiro = Viagem(titulo: "Rio de Janeiro", quantidadeDias: 6, preco: "1.200,00", caminhoImagem: "Assets/img2.jpg")
        let interiorSaoPaulo = Viagem(titulo: "Atibaia - Sao Paulo", quantidadeDias: 1, preco: "890,00", caminhoImagem: "Assets/img3.jpg")
        let paraiba = Viagem(titulo: "Paraíba", quantidadeDias: 3, preco: "1.385,00", caminhoImagem: "Assets/img4.jpg")
        let fortaleza = Viagem(titulo: "Fortaleza", quantidadeDias: 4, preco: "3.120,00", caminhoImagem: "Assets/img5.jpg")
        let listaViagem:Array<Viagem> = [rioDeJaneiro, ceara, interiorSaoPaulo, paraiba, fortaleza]
        
        return listaViagem
    }
}
