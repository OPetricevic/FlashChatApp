//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Omar Petričević on 12.03.2023..
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageVIew: UIImageView!
    @IBOutlet weak var leftImageVIew: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
      
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height/4
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
