//
//  PhotosDetailController.swift
//  Chelsea & Alphonso
//
//  Created by user on 10/14/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class PhotosDetail1Controller: UIViewController {
   
    
    @IBOutlet var myPhotos: UIImageView!
    var photo: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
     myPhotos.image = photo
    }

   

}
