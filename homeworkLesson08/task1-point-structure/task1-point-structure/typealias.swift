//
//  typealias.swift
//  task1-point-structure
//
//  Created by Mauricio on 5/16/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation
//6
typealias CartesianCoordinates = Point
typealias PolarCoordinates = Point

extension Point{
    //6
    init(cartesianX: Double, cartesianY: Double){
        self.init(cordX: cartesianX, cordY: cartesianY)
    }
    init(polarRadius: Double, polarAngle: Double){
        self.init(radius: polarRadius, angle: polarAngle)
    }
}

let myNewCartesianPoint = CartesianCoordinates(cartesianX: 5.0, cartesianY: 6.0)

let myNewPolarPoint = PolarCoordinates(polarRadius: 7.0, polarAngle: 20.0)
