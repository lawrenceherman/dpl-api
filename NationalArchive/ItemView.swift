//
//  ItemView.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/3/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class ItemView: UIView {

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var typeLabel: UILabel!
    
    
    @IBOutlet var contentView: UIView!
    
    var item: DplItem! {
        
        didSet {
            
            print("inside ItemView.item didset")
            
            titleLabel.text = item.title
            typeLabel.text = item.type
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        
        Bundle.main.loadNibNamed("ItemView", owner: self, options: nil)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }




}
