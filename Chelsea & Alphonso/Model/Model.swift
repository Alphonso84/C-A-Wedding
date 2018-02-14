//
//  Model.swift
//  Chelsea & Alphonso
//
//  Created by user on 1/29/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var todoItems:[String]?


struct Friend {
    var name: String
    var job: String
    var image: UIImage
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
        
    }
}

//func fetchAccessoryType() -> UITableViewCellAccessoryType? {
//    if let cellAccessory = UserDefaults.standard.object(forKey: "cellAccessory") {
//        return cellAccessory as? UITableViewCellAccessoryType
//    }else {
//        return nil
//    }
//}

func saveData(todoItems:[String]) {
    UserDefaults.standard.set(todoItems, forKey: "todoItems")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoItems") as? [String] {
        return todo
    } else {
        return nil
    }
}



