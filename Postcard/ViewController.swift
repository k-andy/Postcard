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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessage(sender: UIButton) {
        nameLabel.text = nameTextField.text
        messageSendButton.backgroundColor = .orangeColor()
        nameLabel.hidden = false
        messageTextField.text = ""
        nameTextField.text = ""
        messageTextField.resignFirstResponder()
    }

}

