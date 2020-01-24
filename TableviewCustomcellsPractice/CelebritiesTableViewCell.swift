//
//  CelebritiesTableViewCell.swift
//  TableviewCustomcellsPractice
//
//  Created by Marni Anuradha on 1/8/20.
//  Copyright © 2020 Marni Anuradha. All rights reserved.
//

import UIKit

class CelebritiesTableViewCell: UITableViewCell {

    @IBOutlet weak var celebrityImage: UIImageView!
    
    @IBOutlet weak var celebrityLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onLikeBtnTap(_ sender: UIButton) {
    }
    
    @IBAction func onCommentBtnTap(_ sender: UIButton) {
    }
    
    @IBAction func onShareBtnTap(_ sender: UIButton) {
    }
    
    
}
