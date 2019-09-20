//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Apple on 20/09/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["Red", "Green", "Blue", "Yellow", "Gray", "Brown", "Orange", "Voilet", "Purple", "Pink", "Cyan", "Magenta"]
    var names = ["Tanay", "Sachin", "Virat", "Sehwag", "Dhoni", "Yuvraj", "Raina", "Jadeja", "Ganguly", "Zaheer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return colors.count
        }
        else {
            return names.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Colors"
        }
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if indexPath.section == 0 {
            cell?.textLabel?.text = "\(colors[indexPath.row])"
        }
        else {
            cell?.textLabel?.text = "\(names[indexPath.row])"
        }
        cell?.detailTextLabel?.text = "Codekul"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print("\(colors[indexPath.row])")
        }
        else {
            print("\(names[indexPath.row])")
        }
    }
}
