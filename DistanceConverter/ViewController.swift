//
//  ViewController.swift
//  DistanceConverter
//
//  Created by Piotr Piotrowski on 11/01/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let distance = Distance(miles: 1000)

    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

