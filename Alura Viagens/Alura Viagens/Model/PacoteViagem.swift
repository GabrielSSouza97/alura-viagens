//
//  PacoteViagem.swift
//  Alura Viagens
//
//  Created by Gabriel Santos Souza on 04/01/21.
//  Copyright © 2021 Gabriel Santos Souza. All rights reserved.
//

import UIKit

class PacoteViagem: NSObject {
    
    let nomeDoHotel: String
    let descricao: String
    let dataViagem: String
    let viagem: Viagem
    
    init(nomeDoHotel: String, descricao: String, dataViagem: String, viagem: Viagem) {
        self.nomeDoHotel = nomeDoHotel
        self.descricao = descricao
        self.dataViagem = dataViagem
        self.viagem = viagem
    }

}
