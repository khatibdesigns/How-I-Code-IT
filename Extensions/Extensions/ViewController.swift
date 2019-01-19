//
//  ViewController.swift
//  Extensions
//
//  Created by Iva Hlebarova on 11/24/18.
//  Copyright © 2018 Khatib Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupView()
    }
    
    func setupView() {
        //self.myImageView.setradius(radius: 10) // Setting My Image To 10 pixels radius
        self.myImageView.setradius(radius: self.myImageView.frame.height / 2, borderWidth: 2, borderColor: UIColor.white)
    }
}

