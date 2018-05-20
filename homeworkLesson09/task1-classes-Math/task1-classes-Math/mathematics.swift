//
//  mathematics.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

class Mathematics {
    let figures: [Figure]
    init(figures: [Figure]) {
        self.figures = figures
    }
    
    subscript(index: Int) -> Figure{
        get{
            return figures[index]
        }
    }
    
    //for largest and smallest area
    var largestArea: (value: Double, figureName: String){

        var largestArea: Double = 0.0
        var figureName: String = ""
        
        var largest = figures[0]
        
        for i in 1..<figures.count{
            if figures[i].area > largest.area{
                largest = figures[i]
            }
        }
        largestArea = largest.area
        figureName = largest.type.rawValue
        
        if figureName == "quadrangle" {
            let q: Quadrangle = largest as! Quadrangle
            figureName += "-"+q.quadrangleType.rawValue
        }else if figureName == "triangle"{
            let t: Triangle = largest as! Triangle
            figureName += "-"+t.triangleType.rawValue
        }
        
        return (largestArea, figureName)
    }
    
    var smallestArea: (value: Double, figureName: String){

        var smallestArea: Double = 0.0
        var figureName: String = ""
        var smallest = figures[0]
        
        for i in 1..<figures.count{
            if figures[i].area < smallest.area{
                smallest = figures[i]
            }
        }
        smallestArea = smallest.area
        figureName = smallest.type.rawValue
        
        if figureName == "quadrangle" {
            let q: Quadrangle = smallest as! Quadrangle
            figureName += "-"+q.quadrangleType.rawValue
        }else if figureName == "triangle"{
            let t: Triangle = smallest as! Triangle
            figureName += "-"+t.triangleType.rawValue
        }
        
        return (smallestArea, figureName)
    }
    
    //for largest and smallest perimeter
    var largestPerimeter: (value: Double, figureName: String){
        var largestPerimeter: Double = 0.0
        var figureName: String = ""
        
        var largest = figures[0]
        
        for i in 1..<figures.count{
            if figures[i].perimeter > largest.perimeter{
                largest = figures[i]
            }
        }
        largestPerimeter = largest.perimeter
        figureName = largest.type.rawValue
        
        if figureName == "quadrangle" {
            let q: Quadrangle = largest as! Quadrangle
            figureName += "-"+q.quadrangleType.rawValue
        }else if figureName == "triangle"{
            let t: Triangle = largest as! Triangle
            figureName += "-"+t.triangleType.rawValue
        }
        
        return (largestPerimeter, figureName)
    }
    var smallestPerimeter: (value: Double, figureName: String) {
        var smallestArea: Double
        var figureName: String
        var smallest = figures[0]
        
        for i in 1..<figures.count{
            if figures[i].perimeter < smallest.perimeter{
                smallest = figures[i]
            }
        }
        smallestArea = smallest.perimeter
        figureName = smallest.type.rawValue
        
        if figureName == "quadrangle" {
            let q: Quadrangle = smallest as! Quadrangle
            figureName += "-"+q.quadrangleType.rawValue
        }else if figureName == "triangle"{
            let t: Triangle = smallest as! Triangle
            figureName += "-"+t.triangleType.rawValue
        }
        return (smallestArea, figureName)
    }
}



//var largestArea: (Double, String){
//
//    let maxArea = figures.max(by: {(a,b) -> Bool in
//        return a.area < b.area
//    })
//    return ((maxArea?.area)!, (maxArea?.type.rawValue)!)
//}





