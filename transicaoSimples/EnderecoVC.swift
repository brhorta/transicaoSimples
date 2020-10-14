//
//  EnderecoVC.swift
//  transicaoSimples
//
//  Created by Bruno Horta on 6/10/20.
//

import UIKit
//interface Protocolo
protocol EnderecoVCProtocol: class {
    func registroEndereco(address: String?)
}


class EnderecoVC: UIViewController {
    
    @IBOutlet weak var enderecoTextField: UITextField!
    
    weak var delegate: EnderecoVCProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func enviarEndereco(_ sender: UIButton) {
        
        print("Enviando endereco")
        
        //Disparando o DELEGATE
        //Enviando a info do EnderecoTextField.text p quem estiver ouvindo
        self.delegate?.registroEndereco(address: self.enderecoTextField.text)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clicouVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
