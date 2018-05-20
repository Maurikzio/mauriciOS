//
//  main.swift
//  task1-point-structure
//
//  Created by Mauricio on 5/8/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation
//aditional enum
enum CoordinateType: String{
    case polar
    case cartesian
}
//1
struct PolarToCartesian {
    var x: Double
    var y: Double
    init() {
        self.x = 0.0
        self.y = 0.0
    }
    init(radius: Double, angleDegree: Double) {
        let angleRadian: Double = (angleDegree * 2 * Double.pi) / 360
        self.x = radius * cos(angleRadian)
        self.y = radius * sin(angleRadian)
    }
}
struct CartesianToPolar {
    var radius: Double
    var angleRadian: Double
    var angleDegree: Double {
        get{
            return angleRadian * 360 / (2 * Double.pi)
        }
    }
    init() {
        self.radius = 0.0
        self.angleRadian = 0.0
    }
    init(x: Double, y: Double) {
        self.radius = pow((x * x) + (y * y), 0.5)
        self.angleRadian = atan2(y , x)
    }
}

struct Point {
    var x: Double
    var y: Double
    
    var typeofPoint: CoordinateType = .cartesian
    
    var cartesianRepresentation = PolarToCartesian()
    var polarRepresentation = CartesianToPolar()
    
    //for creating a simple point
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    //2
    //for creating a point giving cartesian coordinates
    init(cordX: Double, cordY: Double) {
        self.x = cordX
        self.y = cordY
        //polarRepresentation.x = x
        //polarRepresentation.y = y
        polarRepresentation = CartesianToPolar(x: cordX, y: cordY)
    }
    //for creating a point giving polar coordinates
    init(radius: Double, angle: Double) {
        self.x = radius
        self.y = angle
//        let extra = PolarToCartesian(radius: radius, angleDegree: angle)
//        cartesianRepresentation = extra
        cartesianRepresentation = PolarToCartesian(radius: radius, angleDegree: angle)
        self.typeofPoint = .polar
    }
    
    //3
    //functions to scale a point
    mutating func scaleCartesianCoordinatesBy(newX: Double, newY: Double) {
        self.x = newX
        self.y = newY
    }
    
    mutating func scalePolarCoordinatesBy(newRadius: Double, newAngle: Double){
        self.x = newRadius
        self.y = newAngle
    }
    
    
}
//4
//function to represent the point and its type
func showPointType(point: Point){
    print("the point is a \(point.typeofPoint.rawValue.capitalized) one")
}


//TESTING

//creating a cardinal point
var point1 = Point(cordX: 12, cordY: 5)
print("point1 -> x: \(point1.x), y: \(point1.y)")
print("polar representation of point1 -> radius:\(point1.polarRepresentation.radius), angle:\(point1.polarRepresentation.angleDegree) ")

point1.scaleCartesianCoordinatesBy(newX: -3, newY: 10)
print("point1 scaled by -> x: \(point1.x), y: \(point1.y)")

showPointType(point: point1)

//creating a polar point
var point2 = Point(radius: 13, angle: 22.6)
print(point2.cartesianRepresentation.x)
print(point2.cartesianRepresentation.y)
point2.scalePolarCoordinatesBy(newRadius: 20, newAngle: 15)

showPointType(point: point2)

//distance between points
let point3 = Point(x: 12, y: 5)
let point4 = Point(x: 12, y: 6)
let distance1 = Point.calculateDistance(from: point3, to: point4)
print(distance1)



















