//
//  UIImageView.swift
//  Extensions
//
//  Created by Iva Hlebarova on 11/24/18.
//  Copyright © 2018 Khatib Designs. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setradius(radius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
}
