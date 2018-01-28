//
//  PhotosViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/4/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit



class PhotosViewController: UICollectionViewController {
    
    @IBOutlet var myCollectionViewOutlet: UICollectionView!
    
    //Images for photos section
    let array: [String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","42","43","44","45","46"]

  //CollectionView Outlet allows me to program collection view
    @IBOutlet var myCollectionView: UICollectionView!
    
    private let reuseIdentifier = "Cell"
    
    override func viewDidLoad() {
        let itemSize = UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        myCollectionView.collectionViewLayout = layout
    }
    
    //Number of Sections in CollectionView
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }

    //Number of items in CollectionView set to number of items in Array
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array.count
    }
    //Telling prototype cell what to display
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: array[indexPath.row] + ".jpg")
    
        return cell
    }
    

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "PhotosDetail1Controller") as! PhotosDetail1Controller
        detailController.photo = UIImage(named: array[indexPath.row] + ".jpg")
        navigationController?.show(detailController, sender: collectionView)
        print(indexPath.row)
        
    }
   
}















