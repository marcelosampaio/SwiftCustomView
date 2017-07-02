//
//  CustomView.swift
//  SwiftCustomView
//
//  Created by Marcelo on 7/2/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class CustomView: UIView {

    // MARK: - Outlets
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        _ = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?[0] as! UIView
        
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    
    // MARK: - UI Actions
    @IBAction func segmentedControlChangedValue(_ sender: Any) {
        
        print("🌴 changed value")
    }
    
}
