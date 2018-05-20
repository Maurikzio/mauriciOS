//
//  extension.swift
//  task1-point-structure
//
//  Created by Mauricio on 5/11/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

extension Point{
    //5 type-function to calculate distance between two points
    static func calculateDistance(from source: Point, to target: Point) -> Double{
        let distanceX = Double(source.x - target.x)
        let distanceY = Double(source.y - target.y)
        return (distanceX * distanceX + distanceY * distanceY).squareRoot()
    }
    //7
    static func createCartesianPointMain(x: Double, y: Double) -> Point{
        return Point(cordX: x, cordY: y)
    }
    static func createPolarPointMain(radius: Double, angle: Double) -> Point{
        return Point(radius: radius, angle: angle)
    }
    static func createPointByCartesianCoordinates(cartesianX: Double, cartesianY: Double) -> CartesianCoordinates{
        return CartesianCoordinates(cartesianX: cartesianX, cartesianY: cartesianY)
    }
    static func createPointByPolarCoodinates(polarRadius: Double, polarAngle: Double) -> PolarCoordinates {
        return PolarCoordinates(polarRadius: polarRadius, polarAngle: polarAngle)
    }
}









