//
//  ViewController.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func login() {
        let alertController = UIAlertController(title: "Exito", message:
            "Usted Ingreso Correctamente", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil))
        
        if(txtUser.hasText && txtPassword.hasText){
            
            UserBC.loginBC(username: txtUser.text!, password: txtPassword.text!, valid: {(isValid) -> Void in
                
                if isValid{
                    print("Ingreo correctamente")
                    self.present(alertController, animated: true, completion: nil)
                    
                } else {
                    print("Credenciales incorrectas")
                    
                    alertController.title = "Error"
                    alertController.message = "Credenciales Incorrectas"
                    
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                    
                }
            })
        } else {
            print("debe llenar todos los campos")
            
            alertController.title = "Error"
            alertController.message = "Debe llenar todos los campos"
            
            
            self.present(alertController, animated: true, completion: nil)
            
        }

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
}

