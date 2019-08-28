//
//  ViewController.swift
//  BasicControls
//
//  Created by Apple on 28/08/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTxtField: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goButtonClick(_ sender: UIButton) {
        myLabel.text = myTxtField.text
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myLabel.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel.backgroundColor = UIColor.green
        }
        else {
            myLabel.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        myLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        mySlider.isUserInteractionEnabled = sender.isOn
    }
    
}

