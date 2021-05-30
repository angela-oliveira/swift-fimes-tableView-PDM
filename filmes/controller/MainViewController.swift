//
//  ViewController.swift
//  filmes
//
//  Created by TecWeb on 29/05/21.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var lbQuantidade: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let qtde = (UIApplication.shared.delegate as! AppDelegate).cadastro.count()
        self.lbQuantidade.text = String(qtde)
    }
}

