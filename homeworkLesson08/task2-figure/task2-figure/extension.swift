//
//  extension.swift
//  task2-figure
//
//  Created by Mauricio on 5/15/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

extension Point{
    static func distance(from point1: Point, to point2: Point) -> Double{
        let distanceX = Double(point1.x - point2.x)
        let distanceY = Double(point1.y - point2.y)
        return ((distanceX * distanceX) + (distanceY * distanceY)).squareRoot()
    }
}

extension Figure{
    //5
    static func area(of figure: Figure) -> Double{
        var area: Double
        switch figure.type {
        case .unknown:
            area = 0.0
        case .dot:
            area = 0.0
        case .line:
            area = 0.0
        case .triangle:
            let ABC = figure[0].x * (figure[1].y - figure[2].y)
            let BCA = figure[1].x * (figure[2].y - figure[0].y)
            let CAB = figure[2].x * (figure[0].y - figure[1].y)
            area =  Double( (ABC) + (BCA) + (CAB))
            area = area * 1/2
        case .square:
            let AB = Point.distance(from: figure[0], to: figure[1])
            area = pow(AB, 2.0)
        case .polygon:
            area = 0.0
            for i in 0..<figure.points.count{
                if i == 4 {
                    area += Double(figure.points[figure.points.count-1].x * figure.points[0].y) - Double(figure.points[figure.points.count-1].y * figure.points[0].x)
                    break
                }
                area += Double(figure.points[i].x * figure.points[i+1].y) - Double(figure.points[i].y * figure.points[i+1].x)
            }
            area /= 2
        }
        return area
    }
    static func perimeter(of figure: Figure) -> Double{
        var perimeter: Double
        switch figure.type {
        case .unknown:
            perimeter = 0.0
        case .dot:
            perimeter = 0.0
        case .line:
            perimeter = 0.0
        case .triangle:
            let AB = Point.distance(from: figure[0], to: figure[1])
            let BC = Point.distance(from: figure[1], to: figure[2])
            let AC = Point.distance(from: figure[0], to: figure[2])
            perimeter = AB + BC + AC
        case .square:
            let AB = Point.distance(from: figure[0], to: figure[1])
            let BC = Point.distance(from: figure[1], to: figure[2])
            let CD = Point.distance(from: figure[2], to: figure[3])
            let AD = Point.distance(from: figure[0], to: figure[3])
            perimeter = AB + BC + CD + AD
        case .polygon:
            perimeter = 0.0
            for i in 0..<figure.points.count{
                if i == 4 {
                    perimeter += Point.distance(from: figure.points[0], to: figure.points[figure.points.count-1])
                    break
                }
                perimeter += Point.distance(from: figure.points[i], to: figure.points[i+1])
            }
            //let firstAndLastPointDistance = Point.distance(from: figure.points[0], to: figure.points[figure.points.count-1])
            //perimeter += firstAndLastPointDistance
        }
        return perimeter
    }
    //6
    var showArea: String{
        if Figure.area(of: self) == 0.0 {
            return "I cant calculate the area for a \(self.type.rawValue.capitalized), try with another figure"
        }else{
            return "The area of your \(self.type.rawValue) is: \(Figure.area(of: self))"
        }
    }
    var showPerimeter: String{
        if Figure.perimeter(of: self) == 0.0 {
            return "I cant calculate the perimeter for a \(self.type.rawValue.capitalized), try with another figure"
        }else{
            return "The perimeter of your \(self.type.rawValue) is: \(Figure.perimeter(of: self))"
        }
    }
}
