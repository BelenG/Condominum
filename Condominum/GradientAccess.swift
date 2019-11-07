//
//  GradientView.swift
//  Condominum
//
//  Created by leonsita on 10/25/19.
//  Copyright © 2019 leonsita. All rights reserved.
//
import Foundation
import UIKit

class GradientAccess: UIImageView {
    
    let myGradientLayer: CAGradientLayer
    
    override init(frame: CGRect){
        myGradientLayer = CAGradientLayer()
        super.init(frame: frame)
        self.setup()
        addGradientLayer()
    }
    
    func addGradientLayer(){
        if myGradientLayer.superlayer == nil{
            self.layer.addSublayer(myGradientLayer)
        }
    }
    
    required init(coder aDecoder: NSCoder){
        myGradientLayer = CAGradientLayer()
        super.init(coder: aDecoder)!
        self.setup()
        addGradientLayer()
    }
    
    func getColors() -> [CGColor] {
        return [UIColor(red: 161/255, green: 140/255, blue: 209/255, alpha: 0.5).cgColor, UIColor(red: 251/255, green: 194/255, blue: 235/255, alpha: 0.5).cgColor]
    }
    
    func getLocations() -> [CGFloat]{
        return [0.4,  0.9]
    }
    
    func setup() {
        myGradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        myGradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        let colors = getColors()
        myGradientLayer.colors = colors
        myGradientLayer.isOpaque = false
        myGradientLayer.locations = getLocations() as [NSNumber]?
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myGradientLayer.frame = self.layer.bounds
    }
}

