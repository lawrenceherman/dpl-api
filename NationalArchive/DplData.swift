//
//  DplData.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/1/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import Foundation


class DplData {
    
    static let sharedInstance = DplData()
    
    var items: [DplItem] = []
    
    func getItemsFromAPI(_ completion: @escaping () -> ()) {
        
        print("test2")
        
        DplAPIClient.getItems { (returnDict) in
            
            print("inside store getitems closure")
            
            self.items.removeAll()
            
            let docs = returnDict["docs"] as? [[String: Any]]
            
            for dictionary in docs! {
                
                
                let item = DplItem(dictionary: dictionary)
                self.items.append(item)
                
            }
            
            if self.items.count > 0 {
                
                
            }
            
            
        }

        
    }
}
