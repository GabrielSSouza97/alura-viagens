//
//  PacotesViagensViewController.swift
//  Alura Viagens
//
//  Created by Gabriel Santos Souza on 04/01/21.
//  Copyright © 2021 Gabriel Santos Souza. All rights reserved.
//

import UIKit

class PacotesViagensViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!
    @IBOutlet weak var pesquisarViagens: UISearchBar!
    @IBOutlet weak var labelContadorPacotes: UILabel!
    
    let listaComTodasViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    var listaViagens: Array<Viagem> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaViagens = listaComTodasViagens
        colecaoPacotesViagem.dataSource = self
        colecaoPacotesViagem.delegate = self
        pesquisarViagens.delegate = self
        self.labelContadorPacotes.text = self.atualizaContadorLabel()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listaViagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! PacoteViagemCollectionViewCell
        
        let viagemAtual = listaViagens[indexPath.item]
        
        celulaPacote.labelTitulo.text = viagemAtual.titulo
        celulaPacote.labelQuantidadeDias.text = "\(viagemAtual.quantidadeDias) dias"
        celulaPacote.labelPreco.text = "\(viagemAtual.preco)"
        celulaPacote.imagemViagem.image = UIImage(named: viagemAtual.caminhoImagem)
        
        celulaPacote.layer.borderWidth = 0.5
        celulaPacote.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        celulaPacote.layer.cornerRadius = 8
        
        return celulaPacote
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let larguraCelula = collectionView.bounds.width / 2
        return CGSize(width: larguraCelula - 15, height: 160)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        listaViagens = listaComTodasViagens
        
        if searchText != ""{
            let filtroListaViagem = NSPredicate(format: "titulo contains %@", searchText)
            let listaFiltrada: Array<Viagem> = (listaViagens as NSArray).filtered(using: filtroListaViagem) as! Array
            listaViagens = listaFiltrada
        }
        self.labelContadorPacotes.text = self.atualizaContadorLabel()
        colecaoPacotesViagem.reloadData()
    }
    
    func atualizaContadorLabel() -> String {
        return listaViagens.count == 1 ? "1 pacote encontrado" : "\(listaViagens.count) pacotes encontrados"
    }

}
