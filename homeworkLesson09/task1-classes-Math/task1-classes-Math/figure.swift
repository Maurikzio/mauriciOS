//
//  figure.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

enum FigureType: String{
    case unknown
    case line
    case triangle
    case quadrangle
}

class Figure{
    var type: FigureType = .unknown
    var points: [Point]
    
    var area = 0.0
    var perimeter = 0.0
    
    init(points: [Point]){
        self.points = points
    }
    
    func calculateArea(){
        //formule for each figure for area
    }
    func calculatePerimeter(){
        //formule for each figure for perimeter
    }
    
    static func distanceOfPoints(from point1: Point, to point2: Point) -> Double{
        let distanceX = Double(point1.x - point2.x)
        let disctanceY = Double(point1.y - point2.y)
        return (distanceX * distanceX + disctanceY * disctanceY).squareRoot().roundIt()
    }
}
