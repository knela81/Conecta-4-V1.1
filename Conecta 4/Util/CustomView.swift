//
//  CustomView.swift
//  Conecta 4
//
//  Created by Miguel Angel Rosell Fernandez on 22/1/22.
//

import UIKit

extension UIView {
    
    
    func round1() {
        layer.cornerRadius = bounds.height / 12
        clipsToBounds = true
    }
}
