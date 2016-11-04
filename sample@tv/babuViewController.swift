//
//  babuViewController.swift
//  sample@tv
//
//  Created by Akhilesh Varanasi on 04/11/16.
//  Copyright © 2016 Akhilesh Varanasi. All rights reserved.
//

import UIKit

class babuViewController: UIViewController {
    
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    var number = "gopibabu"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        numberLabel.text = number
        
        if number == "😎" {
            
            definitionLabel.text = "hey"
        
        }
        if number == "😈"{
            definitionLabel.text = "how r u"
        
        }
        if number == "😁" {
            definitionLabel.text = "why u r so happy"
        
        }
        
        
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
