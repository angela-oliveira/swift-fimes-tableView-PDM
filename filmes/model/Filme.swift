//
//  Filme.swift
//  filmes
//
//  Created by TecWeb on 29/05/21.
//

import Foundation

class Filme: NSObject {
    var nome: String
    var nota: Int
    var oscar: Bool
    var assistiu: Int
    
    override var description: String{
        return "\(self.nome)  - \(self.nota) - \(self.oscar) - \(self.assistiu)"
    }
    init(nome:String, nota:Int, oscar:Bool, assistiu:Int) {
        self.nome = nome
        self.nota = nota
        self.oscar = oscar
        self.assistiu = assistiu
    }
}
