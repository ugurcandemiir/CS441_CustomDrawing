//
//  Canvas.swift
//  CustomDrawing
//
//  Created by Ugurcan Demir on 3/5/21.
//

import UIKit

class Canvas: UIView{
    
    func undo(){
        _ = line.popLast()
        setNeedsDisplay()
    }
    
    
    func clear(){
        line.removeAll()
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {return}
//        self.backgroundColor = UIColor.white
        
        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(10)
        
        for (i,p) in line.enumerated(){
            if i == 0 {
                context.move(to: p)
                
            }else{
                context.addLine(to: p)
            }
        
        }
        context.strokePath()
        
    }
    var line = [CGPoint]()

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {return}
                
        line.append(point)
        
        setNeedsDisplay()
    }
}
