//
//  ResultViewController.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/16/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit
import Foundation

class ResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data = DplData.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        let currentCell = data.items[indexPath.row]
        
        for (key, value) in data.items.enumerated() {
            print(key)
            print(data.items[key].title)
            print(data.items[key].type)
        }
        
        
        
        cell.itemView.item = currentCell
        
        return cell
    }
    



}
