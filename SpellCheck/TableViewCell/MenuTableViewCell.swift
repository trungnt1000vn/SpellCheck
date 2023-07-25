//
//  MenuTableViewCell.swift
//  SpellCheck
//
//  Created by Trung on 25/07/2023.
//  Copyright © 2023 Developers Usage. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var roundLabel: UILabel!
    static let identifier = "MenuTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }
    private func setupCell() {
 
        roundLabel.layer.cornerRadius = 16
        roundLabel.layer.borderWidth = 0.3
        roundLabel.layer.borderColor = UIColor.black.cgColor
        roundLabel.layer.masksToBounds = true
        selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    public func configure(with item:MenuItem){
        iconImageView.image = item.image
        titleLabel.text = item.title
    }
}
