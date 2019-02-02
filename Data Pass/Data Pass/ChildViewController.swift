//
//  ChildViewController.swift
//  Data Pass
//
//  Created by Khatib Designs on 2/2/19.
//  Copyright © 2019 Khatib Designs. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    var passedSelection = String()
    @IBOutlet weak var passedResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.passedResult.text! = passedSelection
        self.title = "Child View"
    }
}
