//
//  blueCollectionCell.swift
//  TestingiOS
//
//  Created by Jamel Peralta Coss on 6/5/19.
//  Copyright © 2019 Jamel Peralta. All rights reserved.
//

import UIKit

class blueCollectionCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var gamelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        image.image = UIImage(named: "gameicon.png")
        
    }
}
