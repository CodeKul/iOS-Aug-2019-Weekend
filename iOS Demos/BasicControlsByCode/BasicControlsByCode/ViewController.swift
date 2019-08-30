//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Apple on 29/08/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel : UILabel?
    var txtField: UITextField?
    var myslider: UISlider?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 40))
        myLabel?.text = "Codekul"
        myLabel?.textColor = UIColor.yellow
        myLabel?.backgroundColor = UIColor.red
        myLabel?.textAlignment = .center
        myLabel?.font = UIFont.systemFont(ofSize: 30)
        self.view.addSubview(myLabel!)
        
        txtField = UITextField(frame: CGRect(x: 16, y: 70, width: 288, height: 30))
        txtField?.placeholder = "Name"
        txtField?.borderStyle = .roundedRect
        self.view.addSubview(txtField!)
        
        let button = UIButton(frame: CGRect(x: 120, y: (txtField?.frame.origin.y)! + (txtField?.frame.height)! + 10, width: 80, height: 30))
        button.setTitle("Go", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(goButtonClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        let segemntedControl = UISegmentedControl(items: ["Red", "Green", "Blue"])
        segemntedControl.frame = CGRect(x: 16, y: button.frame.origin.y + button.frame.height + 10, width: 288, height: 40)
        segemntedControl.selectedSegmentIndex = 0
        segemntedControl.addTarget(self, action: #selector(segemntedControlValueChanged), for: .valueChanged)
        self.view.addSubview(segemntedControl)

        myslider = UISlider(frame: CGRect(x: 16, y: 250, width: 288, height: 40))
        myslider?.maximumValue = 100
        myslider?.minimumValue = 0
        myslider?.minimumTrackTintColor = UIColor.red
        myslider?.maximumTrackTintColor = UIColor.blue
        myslider?.addTarget(self, action: #selector(slidervaluechanged), for: .valueChanged)
        
        self.view.addSubview(myslider!)
        
        let myswitch = UISwitch(frame: CGRect(x: 120, y: 320, width: 40, height: 40))
        myswitch.thumbTintColor = UIColor.red
        myswitch.onTintColor = UIColor.blue
        myswitch.isOn = true
        self.view.addSubview(myswitch)
        myswitch.addTarget(self, action: #selector(switchvaluechanged), for: .valueChanged)
        
        
    }
    @objc func slidervaluechanged(_ sender: UISlider){
        myLabel?.text = "\(sender.value)"
        

    }
    @objc func switchvaluechanged (_ sender: UISwitch){
        myslider?.isUserInteractionEnabled = sender.isOn
    }

    @objc func segemntedControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myLabel?.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel?.backgroundColor = UIColor.green
        }
        else {
            myLabel?.backgroundColor = UIColor.blue
        }
        
        
    }
    
    @objc func goButtonClick(_ sender: UIButton) {
        myLabel?.text = txtField?.text
    }
}

