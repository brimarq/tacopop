//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Brian Marquis on 7/26/17.
//  Copyright © 2017 brimarq. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinID.rawValue)
        tacoLabel.text = taco.productName
    }

}
