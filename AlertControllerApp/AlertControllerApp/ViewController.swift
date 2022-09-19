//
//  ViewController.swift
//  AlertControllerApp
//
//  Created by Jonathan Kearns on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: {action -> Void in})
        alert.addAction(okAction)
        
        self.present(alert, animated:true, completion: nil)
    }
}

