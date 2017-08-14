//
//  ViewController.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/1/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class InitialVC: UIViewController {
//
//    let data = DplData.sharedInstance
//    let initialView = InitialView()
    
    @IBOutlet weak var firstSearchField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        self.view = initialView
        
    
        
        print("test")
        
       
        
        
        
            
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "ShowInitalResultTVC" { return }
        if let dest = segue.destination as? InitialResultTVC {
            
            dest.searchField1 = firstSearchField.text
            
            
        }
    }


}

