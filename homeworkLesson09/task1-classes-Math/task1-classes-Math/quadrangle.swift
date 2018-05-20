//
//  quadrangle.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation
enum quadrangleType: String{
    case unknown
    case rhombus
    case rectangle
    case square
}

class Quadrangle: Figure{
    let pointsNumber = 4
    override var type: FigureType {
        get{ return .quadrangle }
        set{ }
    }
    var quadrangleType: quadrangleType = .unknown
    
    init(_ pointA: Point, _ pointB: Point, _ pointC: Point, _ pointD: Point){
        super.init(points: [pointA, pointB, pointC, pointD])
//        super.type = .quadrangle
    }
    override func calculateArea() {
        let A = points[0]
        let B = points[1]
        let C = points[2]
        let D = points[3]
        
        let AB = Figure.distanceOfPoints(from: A, to: B)
        let BC = Figure.distanceOfPoints(from: B, to: C)
        let CD = Figure.distanceOfPoints(from: C, to: D)
        let DA = Figure.distanceOfPoints(from: D, to: A)
        
        let S = (AB + BC + CD + DA) / 2
        
        area = ((S - AB)*(S - BC)*(S - CD)*(S - DA)).squareRoot().roundIt()
}
    
    override func calculatePerimeter() {
        let A = points[0]
        let B = points[1]
        let C = points[2]
        let D = points[3]
        
        let AB = Figure.distanceOfPoints(from: A, to: B)
        let BC = Figure.distanceOfPoints(from: B, to: C)
        let CD = Figure.distanceOfPoints(from: C, to: D)
        let AD = Figure.distanceOfPoints(from: A, to: D)
        
        perimeter = AB + BC + CD + AD
    }
}

class Square: Quadrangle{
    override var quadrangleType: quadrangleType{
        get{ return .square }
        set{ }
    }
}

class Rhombus: Quadrangle{
    override var quadrangleType: quadrangleType{
        get{ return .rhombus }
        set{ }
    }
}

class Rectangle: Quadrangle{
    override var quadrangleType: quadrangleType{
        get{ return .rectangle }
        set{ }
    }
}
