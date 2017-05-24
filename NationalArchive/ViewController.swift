//
//  ViewController.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/1/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var store = DplData.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        print("test")
        
        store.getItemsFromAPI { 
    
        
        
        }
            
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

