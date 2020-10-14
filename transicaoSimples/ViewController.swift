//
//  ViewController.swift
//  transicaoSimples
//
//  Created by Bruno Horta on 6/10/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var okButton: UIButton!
    
    
    var nome: String? //Variavel "nome" criada para armazenar o dado inserido no textField
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func cadastrarEndereco(_ sender: UIButton) {
        
        self.nome = self.txtNome.text
        
        self.performSegue(withIdentifier: "segueEndereco", sender: nil)
    }
    //sem este prepare for segue a info nao volta
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc:EnderecoVC? = segue.destination as? EnderecoVC
        vc?.delegate = self
    }
}


extension ViewController: EnderecoVCProtocol {
    func registroEndereco(address: String?) {
        self.enderecoTextField.text = address
    }
    
    
}
