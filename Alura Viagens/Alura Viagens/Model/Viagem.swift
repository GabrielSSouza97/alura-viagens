//
//  Viagem.swift
//  Alura Viagens
//
//  Created by Gabriel Santos Souza on 31/12/20.
//  Copyright © 2020 Gabriel Santos Souza. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    
    // MARK: - Atributos
    
    @objc let titulo: String
    let quantidadeDias: Int
    let preco: String
    let caminhoImagem: String
    
    init(titulo: String, quantidadeDias: Int, preco: String, caminhoImagem: String) {
        self.titulo = titulo
        self.quantidadeDias = quantidadeDias
        self.preco = preco
        self.caminhoImagem = caminhoImagem
    }

}
