//
//  CarTableViewCell.swift
//  CarListApp
//
//  Created by Michal Pietrzak on 23/10/2020.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    @IBOutlet var carNameLabel: UILabel!
    @IBOutlet var carView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
