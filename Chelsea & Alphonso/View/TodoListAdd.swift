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

class AddToDoList: UIViewController {
    @IBOutlet weak var todoInput: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        if (todoInput.text != "") {
        todoItems.append(todoInput.text!)
            
           
            todoInput.text = ""
            navigationController!.popToRootViewController(animated: true)
           
        }
        
      
       
    }
    
   
}
