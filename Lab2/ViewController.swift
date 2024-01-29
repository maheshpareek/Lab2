//
//  ViewController.swift
//  Lab2
//
//  Created by Mahesh Pareek on 2024-01-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFirst: UITextField!
    @IBOutlet weak var textLast: UITextField!
    @IBOutlet weak var textCountry: UITextField!
    @IBOutlet weak var textAge: UITextField!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var lblOutput: UILabel!
    
    
    @IBAction func btnAdd(_ sender: UIButton) {
        let txtFirst = textFirst.text
        let txtLast = textLast.text
        let txtCountry = textCountry.text
        let txtAge = textAge.text
     
        if !(txtFirst == "" || txtLast == "" || txtAge == "" || txtCountry == "") {
            textField.text = "Full Name: \(txtFirst ?? "") \(txtLast ?? "")\nCountry: \(txtCountry ?? "")\nAge: \(txtAge ?? "")"
            
            } else {
                lblOutput.text = "Complete the missing Info!"
            }
    }
    @IBAction func btnSubmit(_ sender: UIButton) {
        lblOutput.text = "Successfully submitted!"
        textFirst.text = ""
        textLast.text = ""
        textCountry.text = ""
        textAge.text = ""
        textField.text=""
        
    }
    @IBAction func btnClear(_ sender: UIButton) {
        textFirst.text = ""
        textLast.text = ""
        textCountry.text = ""
        textAge.text = ""
        textField.text = ""
        lblOutput.text = ""
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

