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
    @IBOutlet var innerView: UIView!
    
    let titleLabelColor = UIColor(red: 0.00, green: 0.00, blue: 0.30, alpha: 1.00)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        carView.layer.cornerRadius = 15
        innerView.layer.cornerRadius = 15
        innerView.layer.shadowColor = UIColor.gray.cgColor
        innerView.layer.shadowOpacity = 0.7
        innerView.layer.shadowOffset = .zero
        innerView.layer.shadowRadius = 5
        
        carNameLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        carNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        carNameLabel.textColor = titleLabelColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
