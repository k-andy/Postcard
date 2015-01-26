//
//  ViewController.swift
//  Postcard
//
//  Created by Andriy Shvets on 1/25/15.
//  Copyright (c) 2015 Andriy Shvets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var messageSendButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sendMessage(sender: UIButton) {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
        messageSendButton.backgroundColor = .orangeColor()
        nameLabel.hidden = false
        messageLabel.hidden = false
        
        messageLabel.text = messageTextField.text
        nameLabel.textColor = .blueColor()
        messageLabel.textColor = .redColor()
        nameTextField.text = ""
        messageTextField.text = ""
        
        messageTextField.resignFirstResponder()
    }

}

