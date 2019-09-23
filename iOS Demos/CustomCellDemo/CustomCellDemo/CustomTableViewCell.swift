//
//  CustomTableViewCell.swift
//  CustomCellDemo
//
//  Created by Apple on 23/09/19.
//  Copyright © 2019 Codekul. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var playerImageView: UIImageView!
    @IBOutlet var playerNameLbl: UILabel!
    @IBOutlet var playerSkillLbl: UILabel!
    @IBOutlet var playerTeamLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setData(imageName: String, name: String, skill: String, team: String) {
        playerImageView.image = UIImage(named: imageName)
        playerNameLbl.text = name
        playerSkillLbl.text = skill
        playerTeamLbl.text = team
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
