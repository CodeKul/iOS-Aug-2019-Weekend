//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Apple on 04/09/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func datePicked(_ sender: UIDatePicker) {
        let df = DateFormatter()
        df.dateFormat = "dd-MM-YYYY HH:mm:ss"
        let strDate = df.string(from: sender.date)
        print(strDate)
    }
}
