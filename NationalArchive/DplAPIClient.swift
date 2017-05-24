//
//  DplAPIClient.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/1/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import Foundation


class DplAPIClient {
    
    class func getItems(with completion: @escaping ([String: Any]) -> ()) {
        
        print("inside dpiclient get items")
       
        let urlString = "\(Secrets.url)/items?q=bridge&api_key=\(Secrets.key)"
        
        print("urlString\(urlString)")
        
        let url = URL(string: urlString)
        
        let session = URLSession.shared
        
        guard let potentialUrl = url else { return }
        
        let task = session.dataTask(with: potentialUrl) { (data, response, error) in
            
            
            print("inside dataTask")
            print("response is \(response)")
            
            
            print("data is \(data)")
            print(error?.localizedDescription)

            
            guard let data = data else { return }
            
            
            if let returnArray = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:AnyObject] {
                
                print("inside json serialization")
            
                if let returnArray = returnArray {
                    
                    print("inside return array")
//                    print(returnArray)
                    completion(returnArray)

                    
                }
                
            
            } else {
                print(" ")
            }
        
        
        
        }
        
        task.resume()
        
    }
    


}
