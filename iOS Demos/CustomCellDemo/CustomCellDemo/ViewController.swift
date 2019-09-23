//
//  ViewController.swift
//  CustomCellDemo
//
//  Created by Apple on 23/09/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var players = [[String: String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = ["imageName":"sachin.jpeg", "name": "Sachin Tendulkar", "skill": "Batsman", "team": "MI"]
        let p2 = ["imageName":"virat.jpg", "name": "Virat Kohli", "skill": "Batsman", "team": "RCB"]
        let p3 = ["imageName":"dhoni.jpeg", "name": "MS Dhoni", "skill": "Batsman", "team": "CSK"]
        let p4 = ["imageName":"raina.jpg", "name": "Suresh Raina", "skill": "Batsman", "team": "CSK"]
        players.append(contentsOf: [p1, p2, p3, p4])
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        let player = players[indexPath.row]
        cell.setData(imageName: player["imageName"]!, name: player["name"]!, skill: player["skill"]!, team: player["team"]!)
        return cell
    }
}

