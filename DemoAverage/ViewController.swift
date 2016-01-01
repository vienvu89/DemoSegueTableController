//
//  ViewController.swift
//  DemoAverage
//
//  Created by Vien Vu  on 1/1/16.
//  Copyright © 2016 VienVu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var inputArray = NSMutableArray()
    var tableViewController: averageTableViewController!
    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextIsTapped(sender: AnyObject) {
        
        self.inputArray.addObject(tfInput.text!)
        tableViewController.arrayFromSegue = inputArray
        tableViewController.tableView.reloadData()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "sendResult" {
            tableViewController = segue.destinationViewController as! averageTableViewController
        }
    }
}

