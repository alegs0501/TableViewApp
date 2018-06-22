//
//  TeamCellTableViewCell.swift
//  TableViewApp
//
//  Created by CICE on 21/6/18.
//  Copyright © 2018 alegs0501. All rights reserved.
//

import UIKit

class TeamCellTableViewCell: UITableViewCell {

    //Creating outlets from cell
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamNickLabel: UILabel!
    @IBOutlet weak var teamCityLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
