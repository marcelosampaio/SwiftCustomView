//
//  ViewController.swift
//  SwiftCustomView
//
//  Created by Marcelo on 7/2/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomViewDelegate {
    
    // MARK: - Outets
    @IBOutlet weak var customView: CustomView!
    

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customView.delegate = self


    }

    
    // MARK: - CustomView Delegate
    func didChangeSegmentedControlValue(value: Int) {
        print("🤘 delegated action received.... value: \(value)")
    }

}

