//
//  CustomButton.swift
//  Conecta 4
//
//  Created by Miguel Angel Rosell Fernandez on 22/1/22.
//

import UIKit

extension UIButton {
    
    
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
        
    }
    
    func blinkAmarillo() {
        let coloractual = self.backgroundColor
        let blinkColor = UIColor(red: 1, green: 0.993, blue: 0.434, alpha: 1)
        UIView.animate(withDuration: 1, animations: {
            self.backgroundColor = blinkColor
        }) {(completion) in UIView.animate(withDuration: 1, animations: {
            
            self.backgroundColor = coloractual
        })
            
        }
            
    }
    
    func blinkRojo() {
        let coloractual = self.backgroundColor
        let blinkColor = UIColor(red: 1, green: 0.466, blue: 0.346, alpha: 1)
        
        UIView.animate(withDuration: 1, animations: {
            self.backgroundColor = blinkColor
        }) {(completion) in UIView.animate(withDuration: 1, animations: {
            
            self.backgroundColor = coloractual
        })
            
        }
        
    }
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
            return self.bounds.contains(point) ? self : nil
        }
    func blink(enabled: Bool = true, duration: CFTimeInterval = 0.8, stopAfter: CFTimeInterval = 0.0 ) {
            enabled ? (UIView.animate(withDuration: duration, //Time duration you want,
                delay: 0.0,
                options: [.curveEaseInOut, .autoreverse, .repeat],
                animations: { [weak self] in self?.alpha = 0.0 },
                completion: { [weak self] _ in self?.alpha = 1.0 })) : self.layer.removeAllAnimations()
            if !stopAfter.isEqual(to: 0.0) && enabled {
                DispatchQueue.main.asyncAfter(deadline: .now() + stopAfter) { [weak self] in
                    self?.layer.removeAllAnimations()
                }
            }
        }
}
