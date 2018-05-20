//
//  vector.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

struct Vector {
    var coordinates: Point
    
    init(_x: Double, _y: Double){
        self.coordinates = Point(x: _x, y: _y)
    }
    init(origin: Point, end: Point){
        let xcoord = end.x - (origin.x)
        let ycoord = end.y - (origin.y)
//        self.coordinates = Point(x: xcoord, y: ycoord)
        self.init(_x: xcoord, _y: ycoord)
    }
    var modulus: Double{
        return (pow(self.coordinates.x, 2.0) + pow(self.coordinates.y, 2.0)).squareRoot().roundIt()
    }
    func scalarProduct(by vector2: Vector) -> Double{
        return (self.coordinates.x * vector2.coordinates.x) + (self.coordinates.y * vector2.coordinates.y)
    }
    func angle(between vector2: Vector) -> Double{
        let angle: Double = scalarProduct(by: vector2) / (self.modulus * vector2.modulus)
        return (acos(angle)*180/Double.pi).roundIt()
    }
}




