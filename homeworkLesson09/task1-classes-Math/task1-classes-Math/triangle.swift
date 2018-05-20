//
//  triangle.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

enum TriangleType: String{
    case unknown
    case right
    case obtuse
    case acute
}

class Triangle: Figure{
    let pointsNumber = 3
    override var type: FigureType{
        get { return .triangle}
        set {}
    }
    init(_ pointA: Point, _ pointB: Point, _ pointC: Point){
        super.init(points: [pointA, pointB, pointC])
        super.type = .triangle
        
    }
    var internalAngles: (angleA: Double, angleB: Double, angleC: Double){
        let A = self.points[0]
        let B = self.points[1]
        let C = self.points[2]
        
        let vectorAB = Vector(origin: A, end: B)
        let vectorBA = Vector(origin: B, end: A)
        
        let vectorAC = Vector(origin: A, end: C)
        let vectorCA = Vector(origin: C, end: A)
        
        let vectorBC = Vector(origin: B, end: C)
        let vectorCB = Vector(origin: C, end: B)
        
        var angleA = vectorAB.scalarProduct(by: vectorAC) / (vectorAB.modulus * vectorAC.modulus)
        angleA = ((acos(angleA)*180)/Double.pi).roundIt()
        var angleB = vectorBC.scalarProduct(by: vectorBA) / (vectorBC.modulus * vectorBA.modulus)
        angleB = ((acos(angleB)*180)/Double.pi).roundIt()
        var angleC = vectorCA.scalarProduct(by: vectorCB) / (vectorCA.modulus * vectorCB.modulus)
        angleC = ((acos(angleC)*180)/Double.pi).roundIt()
        
        return (angleA, angleB, angleC)
    }
    var triangleType: TriangleType {
        let angles = self.internalAngles
        var type = TriangleType.unknown
        if angles.angleA < 90, angles.angleB < 90, angles.angleC < 90 {
            type = .acute
        }else if angles.angleA == 90 || angles.angleB == 90 || angles.angleC == 90{
            type = .right
        }else if angles.angleA > 90 || angles.angleB > 90 || angles.angleC > 90{
            type = .obtuse
        }
        return type
    }
    override func calculateArea() {
        let A = self.points[0]
        let B = self.points[1]
        let C = self.points[2]
        let lengthAB = Figure.distanceOfPoints(from: A, to: B)
        let lengthAC = Figure.distanceOfPoints(from: A, to: C)
        let lengthBC = Figure.distanceOfPoints(from: B, to: C)
        
        let S = 1/2 * (lengthAB + lengthAC + lengthBC) //semiperimeter
        
        area = (S*(S - lengthAB)*(S - lengthBC)*(S - lengthAC)).squareRoot().roundIt()
    }
    
    override func calculatePerimeter() {
        let A = self.points[0]
        let B = self.points[1]
        let C = self.points[2]
        let lengthAB = Figure.distanceOfPoints(from: A, to: B)
        let lengthAC = Figure.distanceOfPoints(from: A, to: C)
        let lengthBC = Figure.distanceOfPoints(from: B, to: C)
        perimeter = lengthAB + lengthAC + lengthBC
    }
}
