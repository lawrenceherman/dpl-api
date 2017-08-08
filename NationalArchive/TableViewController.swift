//
//  TableViewController.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/16/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let data = DplData.sharedInstance


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        let currentCell = data.items[indexPath.row]
        
//        for (key, value) in data.items.enumerated() {
//            print(key)
//            print(data.items[key].title)
//            print(data.items[key].type)
//        }
//
//        print(currentCell)
        
        cell.textLabel?.text = currentCell.title
       
        
        return cell
    }


   
    

}
