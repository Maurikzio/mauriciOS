//
//  line.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

class Line: Figure{
    let pointsNumber = 2
    let initialPoint: Point
    let finalPoint: Point
    
    init(_ initialPoint: Point, _ finalPoint: Point){
        self.initialPoint = initialPoint
        self.finalPoint = finalPoint
        super.init(points: [initialPoint, finalPoint])
        super.type = .line
    }
    var distanceBetweenPoints: Double{
        return Figure.distanceOfPoints(from: initialPoint, to: finalPoint)
    }
    var vector: Vector{
        return Vector(origin: initialPoint, end: finalPoint)
    }
}
