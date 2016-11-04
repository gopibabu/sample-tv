//
//  ViewController.swift
//  sample@tv
//
//  Created by Akhilesh Varanasi on 01/11/16.
//  Copyright © 2016 Akhilesh Varanasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var exampletableview: UITableView!
    
    
    var numbers = ["😎","😈","😁"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        exampletableview.dataSource = self
        exampletableview.delegate = self
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = numbers[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let number = numbers[indexPath.row]
        performSegueWithIdentifier("goSeque", sender: number)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let babuvc = segue.destinationViewController as! babuViewController
        
        babuvc.number = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

