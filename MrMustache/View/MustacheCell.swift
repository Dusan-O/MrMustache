//
//  MustacheCell.swift
//  MrMustache
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import UIKit

class MustacheCell: UICollectionViewCell {
 
    @IBOutlet weak var iv: UIImageView!
    
    var image: UIImage? {
        didSet {
            iv.image = image
        }
    }
}
