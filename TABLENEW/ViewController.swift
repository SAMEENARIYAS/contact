//
//  ViewController.swift
//  TABLENEW
//
//  Created by qburst on 08/09/16.
//  Copyright © 2016 qburst. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    let cellIdentifier = "CellIdentifier"
    var animals: [String] = []
    var currentAnimalToBeAdded: String!
  //  var alphAnimals = [String: String[]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animals = ["Dog","Cat" , "Elephant"]
        animals.append(currentAnimalToBeAdded)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    /// function for dictionary
  /*  private func alphabetizeArray(array: [String]) -> [String: [String]] {
        var result = [String: [String]]()
        
        for item in array {
            let index = item.startIndex.advancedBy(1)
            let firstLetter = item.substringToIndex(index).uppercaseString
            
            if result[firstLetter] != nil {
                result[firstLetter]!.append(item)
            } else {
                result[firstLetter] = [item]
            }
        }
        
        for (key, value) in result {
            result[key] = value.sort({ (a, b) -> Bool in
                a.lowercaseString < b.lowercaseString
            })
        }
    
    } */
    
    
    
    // section
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
   /* func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        let keys = alphAnimals.keys
        return keys.count
            } */
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return animals.count
    }
    
  /*  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         let keys = alphAnimals.keys
        let sortedKeys = keys.sort({ (a, b) -> Bool in
            a.lowercaseString < b.lowercaseString
        })
        
        // Fetch animals
        let key = sortedKeys[section]
        
        if let animals = alphAnimals[key] {
            return animals.count
        }
        
        
        return 0
    }  */
        
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)

            let animal = animals[indexPath.row]
            cell.textLabel?.text = animal
           return cell
        }
        
 /*   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        let keys = alphAnimals.keys.sort({ (a, b) -> Bool in
            a.lowercaseString < b.lowercaseString
        })
        
        // Fetch animal for Section
        let key = keys[indexPath.section]
        
        if let animals = alphAnimals[key] {
            // Fetch animal
            let animal = animals[indexPath.row]
            
            // Configure Cell
            cell.textLabel?.text = animal
        }
        
        
       // let animal = animals[indexPath.row]
       // cell.textLabel?.text = animal
        return cell
    }

}  */
        
    }

