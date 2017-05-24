//
//  DPLItem.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/1/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import Foundation



struct DplItem {
    
    
    //  docs - id
    var id: String!
    
    // docs - source resources - title
    var title: String?
    
    // docs - sourceResource - name
//    var spatialName: String
    //     name of location
    
    //    docs - sourceResources - type
    var type: String = "unknown"
    // image. doc
    

    
    init(dictionary: [String:Any]) {
        
        guard
            
            
            let dplId = dictionary["id"] as? String,
            
            let sourceResource = dictionary["sourceResource"] as? [String: Any],
            let dplType = sourceResource["type"] as? String?
            
            
            
        else { print("error"); return}

        
        
        
//        var dplTitle = sourceResource["title"]
        if let dplTitle = sourceResource["title"] as? [String] {
            
            title = dplTitle[0]
            
        } else {
            title = sourceResource["title"] as? String
        }

        id = dplId
        
        if dplType != nil {
            if let dplType = dplType {
               type = dplType
            }
        }
        
        print(id)
        print(title?.description)
        print(type.description)
    }
    
}
    
    


//    
//    //     docs - sourceResource - description
//    var description: String
//
//    
//
//    //      docs - sourceResources - collection - id
//    var collectionId: String
//    
//    
//    //    docs - dataProvider
//    var dataProvider: String
//    //    title of contributing entity
//    
//    //    docs - isShownAt
//    var isShownAt: String
////    acutal linked webpage of provider
//    
//
//    
//    var object: String
//    // link to thumbnail
//    
//
//    
//    
//    // sourceResources subject array?
//    
//    
////     docs - sourceResource - rights
////       var rights: String
//    // legal rights
//    
//
//    
//    
//    
//    
//    
//
//    
//    
//    
//    var partner: String
//    
//    var contributingInstitution: String
//    
  
    
   
    
    
    
    
    

