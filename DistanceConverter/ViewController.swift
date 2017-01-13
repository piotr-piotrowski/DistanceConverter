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
        
        kmTextField.addTarget(self, action: #selector(convertToMiles(_:)), for: .editingChanged)
        milesTextField.addTarget(self, action: #selector(convertToKm(_:)), for: .editingChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func convertToKm(_ sender: AnyObject) {
        if let miles = Double(milesTextField.text!) {
            distance.miles = miles
            kmTextField.text = "\(Int(distance.km))"
        }
    }
    
    func convertToMiles(_ sender: AnyObject) {
        if let km = Double(kmTextField.text!) {
            distance.km = km
            milesTextField.text = "\(Int(distance.miles))"
        }
    }

}

