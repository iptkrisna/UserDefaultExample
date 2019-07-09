//
//  ViewController.swift
//  UserDefaultExample
//
//  Created by I Putu Krisna on 05/07/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordTF: UITextField!
    @IBOutlet weak var dataLabel: UILabel!
    let userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataLabel.text = userDef.string(forKey: "word")
        
    }

    @IBAction func saveButton(_ sender: UIButton) {
        userDef.set(wordTF.text, forKey: "word")
        dataLabel.text = userDef.string(forKey: "word")
        
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true))
        
    }
    
}

