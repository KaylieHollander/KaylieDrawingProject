//
//  DrawingView.swift
//  KaylieDrawingProject
//
//  Created by Hollander, Kaylie on 11/1/18.
//  Copyright © 2018 Hollander, Kaylie. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        createSquare().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.green.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    
    private func createSquare() -> UIBezierPath
    {
        let square : UIBezierPath = UIBezierPath()
        
        UIColor.blue.setStroke()
        square.lineWidth = 3.0
        
        square.move(to: CGPoint(x: 20, y: -15))
        square.addLine(to: CGPoint(x: 25, y: 40))
        square.move(to: CGPoint(x: 20, y: 40))
        square.addLine(to: CGPoint(x: 45, y: 40))
        square.move(to: CGPoint(x: 40, y: 40))
        square.addLine(to: CGPoint(x: 45, y: 80))
        
            
        return square
    }
    
    
    
   

}
