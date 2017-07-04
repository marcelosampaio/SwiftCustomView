//
//  CustomView.swift
//  SwiftCustomView
//
//  Created by Marcelo on 7/2/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

// MARK: - Prototols
protocol CustomViewDelegate: class {
    func didChangeSegmentedControlValue(value: Int)
}




// MARK: - Class
class CustomView: UIView {

    // MARK: - Properties
    weak var delegate: CustomViewDelegate?
    
    
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
        // action to delegate
        
        let segmentedControl = sender as? UISegmentedControl
        let selectedSegment = segmentedControl?.selectedSegmentIndex
        
        delegate?.didChangeSegmentedControlValue(value: selectedSegment!)
        
    }
    
}
