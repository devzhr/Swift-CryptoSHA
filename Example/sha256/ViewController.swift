//
//  ViewController.swift
//  sha256
//
//  Created by devzhr on 27/05/2020.
//  Copyright © 2020 devzhr. All rights reserved.
//

import UIKit
import CryptoSHA256
import SPAlert
class ViewController: UIViewController {
    
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var hashnameLbl: UILabel!
    @IBOutlet weak var sha256Lbl: UILabel!
    @IBOutlet weak var copyBnt: UIButton!
    
    var hashName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func crypto(_ sender: UIButton) {
        let clearString = password.text
        if clearString != ""{
            self.hashName = clearString!.sha256()
            hashnameLbl.text = "HashName:"
            sha256Lbl.text = self.hashName
            copyBnt.isHidden = false
        } else {
            hashnameLbl.text = "Please fill in a password"
            sha256Lbl.text = ""
            copyBnt.isHidden = true
        }
        

    }
    @IBAction func Copy(_ sender: UIButton) {
        UIPasteboard.general.string = self.hashName
        let alertView = SPAlertView(title: "Copy", message: nil, preset: SPAlertPreset.done)
        alertView.duration = 3
        alertView.present()
        
    }
    
}

