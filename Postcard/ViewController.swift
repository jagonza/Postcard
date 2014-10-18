//
//  ViewController.swift
//  Postcard
//
//  Created by Javier González Rojo on 13/09/14.
//  Copyright (c) 2014 Javier González Rojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here to test commit
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        sendMailButton.enabled = false;
        sendMailButton.setTitle("Mail sent!!", forState: UIControlState.Normal)
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
    }

}

