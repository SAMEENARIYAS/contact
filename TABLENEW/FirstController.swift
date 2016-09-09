//
//  FirstController.swift
//  TABLENEW
//
//  Created by qburst on 08/09/16.
//  Copyright © 2016 qburst. All rights reserved.
//

import UIKit

class FirstController: UIViewController {
    var pass = ViewController()

    @IBOutlet weak var name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "push" {
           let vc = segue.destinationViewController as! ViewController
            vc.currentAnimalToBeAdded = name.text
        }
    }
  @IBAction func save() {    name.resignFirstResponder()    }
//    
//    
//    func callfn() {
//      if let name1 = name?.text{
//        if name != "" {
//            
//                    pass.animals.append(name.text!)
//                    let row = pass.animals.count-1
//                    let indexPath = NSIndexPath(forRow: row, inSection: 0)
//                    //   openTable.listTable.insertRowAtIndexpath([indexPath], withanimation: .Fade)
//                    
//        }
        //name.text = ""
    
                
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  
