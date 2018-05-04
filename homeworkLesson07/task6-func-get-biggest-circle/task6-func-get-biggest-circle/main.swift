//
//  main.swift
//  task6-func-get-biggest-circle
//
//  Created by Mauricio on 5/2/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation
//theory
//si el punto tienes dos cooredenadas (a, b), el radio de la circunferencia es r=V(a^2 + b^2)
//para ver si un punto de las coordenadas (c,d), esta o no en la circunferencia basta comprobar si Vc^2+d^2 = r

//array that contains the points of circles
let arrayOfCircles: [(Double, Double)] = [(3.0,0.0), (0.0, 3.0), (-3.0, 0.0), (2.0, 1.0)]

//function to calculate the radius of each circle
func calculateRadius(of circle:(Double , Double)) -> Double{
    return  (pow((circle.0), 2) + pow((circle.1), 2)).squareRoot()
}

//function to verify if a point is part of a circle
func verifyIf(point cords: (Double, Double), form circle: (Double, Double))->Bool{
    let radiusOfCircle = calculateRadius(of: circle)
    return (pow((cords.0), 2) + pow((cords.1), 2)).squareRoot() == radiusOfCircle
}

//function to get the biggest circle of circles that are formed by a common point
func getBiggestCircle(of circles:[(Double, Double)], with myPoint:(Double, Double)) -> (x: Double, y: Double, radius: Double){
    var arrayOfCirclesWithCommonPoint: [(Double,Double)] = []
    for circle in circles{
        if verifyIf(point: myPoint, form: circle){
            arrayOfCirclesWithCommonPoint += [(circle.0, circle.1)]
        }
    }
    let biggestCircle = arrayOfCirclesWithCommonPoint.max{ a, b in calculateRadius(of: (a.0, a.1)) < calculateRadius(of: (b.0, b.1))}
    
    return (biggestCircle!.0, biggestCircle!.1, calculateRadius(of: (biggestCircle!.0, biggestCircle!.1)))
}

print(getBiggestCircle(of: arrayOfCircles, with: (0.0, -3.0)))

/*
let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
let greatestHue = hues.max { a, b in a.value < b.value }
print(greatestHue)
*/



