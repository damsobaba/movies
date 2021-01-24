//
//  PresentTableViewCell.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 24/11/2020.
//

import UIKit

class PresentTableViewCell: UITableViewCell {

    @IBOutlet weak var WhiteView: UIView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var titleLbel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//         shadowonView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
//     func shadowonView() {
//        WhiteView.layer.masksToBounds = true
//        WhiteView.layer.cornerRadius = 2.0
//        WhiteView.layer.shadowRadius = 2.0
//        WhiteView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
//    }
    
    func configure( title: String, ranking: String) {
        
        titleLbel.text = title
        rankLabel.text = ranking
    }
}

