//
//  FormViewController.swift
//  filmes
//
//  Created by TecWeb on 29/05/21.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var lbNota: UILabel!
    //@IBAction func slNota(_ sender: UISlider) {
    //    let valor = Int(sender.value)
    //    lbNota.text = "\(valor)"
    //}
    @IBAction func slNota(_ sender: Any) {
        self.lbNota.text = String(Int(self.slider.value))
    }
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var swOscar: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var lbAssistiu: UILabel!
    @IBAction func stVezes(_ sender: UIStepper) {
        lbAssistiu.text = Int(sender.value).description
    }
    var cadastro: Cadastro!
    
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text!
        let nota = Int(self.slider.value)
        let oscar = self.swOscar.isOn ? true : false
        let assistiu = Int(self.stepper.value)
        
        let filme = Filme(nome: nome, nota: nota, oscar:oscar, assistiu: assistiu)
        
        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
        self.cadastro.add(filme: filme)
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.wraps = true
        stepper.autorepeat = true
    }
    
}
