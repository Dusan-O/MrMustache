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
        setup()
    }
    
    func setupMustache() {
        let mustache = mustaches[currentMustacheIndex]
        mustacheLabel.text = mustache.title
        mustacheDescription.text = mustache.descriptionMustache
        mustacheImageView.image = mustache.image
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    var id: String {
        return "MustacheCell"
    }
    
    func setup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let flowLayout = UICollectionViewFlowLayout()
        let width = collectionView.frame.height * 0.85
        flowLayout.itemSize = CGSize(width: width, height: width)
        flowLayout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = flowLayout
        collectionView.layer.cornerRadius = 25
        collectionView.layer.borderWidth = 1
        collectionView.layer.borderColor = UIColor.systemMint.cgColor
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mustaches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! MustacheCell
        cell.image = mustaches[indexPath.item].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.item
        currentMustacheIndex = index
        setupMustache()
    }
}

