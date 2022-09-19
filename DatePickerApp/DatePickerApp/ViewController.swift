//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Jonathan Kearns on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }
    
    func ShowALert(dateTime : String){
        let alert = UIAlertController(title: "Select Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from:myDatePicker.date)
        ShowALert(dateTime: selectedDate)
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowALert(dateTime: selectedDate)
    }
}

