//
//  Cadastro.swift
//  filmes
//
//  Created by TecWeb on 29/05/21.
//

import Foundation

class Cadastro  {
    private var lista: Array<Filme>
    
    init() {
        self.lista = Array<Filme>()
    }
    func add(filme: Filme) {
        self.lista.append(filme)
    }
    
    func count() -> Int {
        return self.lista.count
    }
    func get(index: Int) -> Filme {
        return self.lista[index]
    }
    
    func get() -> Array<Filme> {
        return self.lista
    }
    func del(index: Int) {
        self.lista.remove(at: index)
    }
    
    func mov(de: Int, para: Int){
        
    }
    
    func update(index: Int, disciplina: Disciplina){
        self.lista[index] = disciplina
    }
}
}
