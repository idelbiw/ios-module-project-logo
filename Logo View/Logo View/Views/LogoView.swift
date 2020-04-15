//
//  LogoView.swift
//  Logo View
//
//  Created by Waseem Idelbi on 4/14/20.
//  Copyright © 2020 WaseemID. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            /// - Vertical Line
            let verticalLineStartPoint: CGPoint = CGPoint(x: rect.size.width / 4,
                                                          y: 0)
            let verticalLineEndPoint: CGPoint = CGPoint(x: verticalLineStartPoint.x,
                                                        y: rect.size.height)
            
            /// - Horizontal Line
            let horizontalLineStartPoint: CGPoint = CGPoint(x: 0,
                                                            y: 2 * rect.size.height / 3)
            let horizontalLineEndPoint: CGPoint = CGPoint(x: rect.size.width,
                                                          y: horizontalLineStartPoint.y)
            
            /// Drawing the circle
            context.addEllipse(in: rect)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
                        
            ///Drawing the vertical line
            context.beginPath()
            context.move(to: verticalLineStartPoint)
            context.addLine(to: verticalLineEndPoint)
            context.setStrokeColor(UIColor.white.cgColor)
            context.setLineWidth(rect.size.width / 5)
            context.strokePath()
            
            ///Drawing the horizontal line
            context.beginPath()
            context.move(to: horizontalLineStartPoint)
            context.addLine(to: horizontalLineEndPoint)
            context.setStrokeColor(UIColor.white.cgColor)
            context.setLineWidth(rect.size.width / 8)
            context.strokePath()
            
            
        }
        
    }
    
} //End of class
