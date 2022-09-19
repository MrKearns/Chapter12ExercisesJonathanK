//
//  ViewController.swift
//  AlertControllerTextFieldApp
//
//  Created by Jonathan Kearns on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelResult.numberOfLines = 0
        // Do any additional setup after loading the view.
    }


 
    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log In", message: "Enter Passowrd", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.labelResult.text = savedText.text
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}

