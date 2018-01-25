//
//  Wedding.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import Foundation
import UIKit


struct friends {
    var name: String
    var job: String
    var image: UIImage
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
        
    }
}


class Wedding: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sections = ["GroomsMen", "BridesMaids"]
    var groomsMen: [friends] = []
    var bridesMaids: [friends] = []
    
    let Aaron = friends(name: "Aaron Seabron", job: "Sales Director at Adidas", image: #imageLiteral(resourceName: "Aaron"))
    let Neville = friends(name: "Neville Sumiran", job: "Civil Engineer", image: #imageLiteral(resourceName: "Neville.JPG"))
    let Jonathan = friends(name: "Jonathan Overall", job: "Pastor", image: #imageLiteral(resourceName: "Jonathan.JPG"))
    let Joseph = friends(name: "Joseph Sensley", job: "Best Man", image: #imageLiteral(resourceName: "Joseph.JPG"))
    let Len = friends(name: "Len Lacanlale", job: "Pharmacy Technician", image: #imageLiteral(resourceName: "Len.JPG"))
    
    
    let Gena = friends(name: "Gena Brown", job: "", image: #imageLiteral(resourceName: "Gena.JPG"))
    let Chereese = friends(name: "Chereese Bedingfield Rowe", job: "", image:#imageLiteral(resourceName: "Chereese.JPG"))
    let Alecia = friends(name: "Alecia Harris", job: "", image: #imageLiteral(resourceName: "Alecia.JPG"))
    let Kristy = friends(name: "Kristy Singletary", job: "", image: #imageLiteral(resourceName: "Kristy.JPG"))
    let Blake = friends(name: "Blake", job: "", image: #imageLiteral(resourceName: "Blake.JPG"))
    let Ashley = friends(name: "Ashley Seabron", job: "", image: #imageLiteral(resourceName: "Ashley.JPG"))
    let Danielle = friends(name: "Danielle Sensley", job: "Marketing Manager", image: #imageLiteral(resourceName: "Danielle.JPG"))
    let Brittney_C = friends(name: "Brittney Coleman", job: "", image: #imageLiteral(resourceName: "BrittneyC.JPG"))
    let Brittney_R = friends(name: "Brittney Richardson", job: "", image: #imageLiteral(resourceName: "BrittneyR.JPG"))
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        groomsMen = [ Aaron, Neville, Jonathan, Joseph, Len]
        bridesMaids = [Gena, Chereese, Alecia, Kristy, Blake, Ashley, Danielle, Brittney_C, Brittney_R]
        tableView.reloadData()
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Groomsmen"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let sectionNumber = indexPath.section
        
        
        if sectionNumber == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            cell.textLabel?.text = groomsMen[indexPath.row].name
            
            cell.imageView?.image = groomsMen[indexPath.row].image
            return cell
        } else {
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            cell.textLabel?.text = bridesMaids[indexPath.row].name
            cell.imageView?.image = bridesMaids[indexPath.row].image
            return cell
            
        }
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return groomsMen.count
        } else {
            return bridesMaids.count
        }
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let detailController = WeddingDetailController()
//        let sectionNumber = indexPath.section
//
//        if sectionNumber == 0 {
//            detailController.detailImageView.image = groomsMen[indexPath.row].image
//            detailController.nameLabel.text = groomsMen[indexPath.row].name
//        } else {
//            detailController.detailImageView.image = bridesMaids[indexPath.row].image
//            detailController.nameLabel.text = bridesMaids[indexPath.row].name
//        }
//
//        //      showDetailViewController(detailController, sender: tableView)
//        present(detailController, animated: true)
        
    }
    
    
}

