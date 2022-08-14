//
//  ViewController.swift
//  MrMustache
//
//  Created by Dusan Orescanin on 15/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mustacheLabel: UILabel!
    @IBOutlet weak var mustacheImageView: UIImageView!
    @IBOutlet weak var mustacheDescription: UITextView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var mustaches: [Mustache] = AllMustaches.get.all
    var currentMustacheIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMustache()
        
    }
    
    func setupMustache() {
        let mustache = mustaches[currentMustacheIndex]
        mustacheLabel.text = mustache.title
        mustacheDescription.text = mustache.descriptionMustache
        mustacheImageView.image = mustache.image
    }


}

