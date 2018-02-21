//
//  TodoListAdd.swift
//  Chelsea & Alphonso
//
//  Created by user on 1/29/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import FirebaseDatabase

class AddToDoList: UIViewController {
    @IBOutlet weak var todoInput: UITextField!
    var ref:DatabaseReference?
    
    @IBAction func addTask(_ sender: Any) {
        ref = Database.database().reference()
        if (todoInput.text != "") {
          ref?.child("list").childByAutoId().setValue(todoInput.text)
          //todoItems?.append(todoInput.text!)
            todoInput.text = ""
            navigationController!.popToRootViewController(animated: true)
        }
        
    }
    
   
}
