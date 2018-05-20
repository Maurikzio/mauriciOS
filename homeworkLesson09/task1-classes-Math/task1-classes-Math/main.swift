//
//  main.swift
//  task1-classes-Math
//
//  Created by Mauricio on 5/18/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

extension Double{
    func roundIt() ->Double{
        return (self*100).rounded()/100
    }
}

//creating a line
print("----------line----------")
let myLine = Line(Point(x: 2, y: 4), Point(x: 4, y: -1))
print("the distance between the initial-final point is: \(myLine.distanceBetweenPoints)")
print("vector formed with your line : \(myLine.vector.coordinates)")

//creating a vector
print("----------vector----------")
let myVector = Vector(origin: Point(x: 2, y: 4), end: Point(x: -1, y: 1))

print("myVector -> (x:\(myVector.coordinates.x), y:\(myVector.coordinates.y))")

print("the modulus of your vector is: \(myVector.modulus)")
let vector2 = Vector(_x: 2, _y: -5)
print("scalar product (x:\(myVector.coordinates.x), y:\(myVector.coordinates.y)) by (x:\(vector2.coordinates.x), y:\(vector2.coordinates.y)) = \(myVector.scalarProduct(by: vector2))")

print("angle between vector(x:\(myVector.coordinates.x), y:\(myVector.coordinates.y)) and vector(x:\(vector2.coordinates.x), y:\(vector2.coordinates.y))  = \(myVector.angle(between: vector2)) ")

//creating a triangle
print("----------triangle----------")
let myTriangle = Triangle(Point(x: -8, y: 0), Point(x: 4, y: 6), Point(x: 7, y: 0))
print(myTriangle.type)
print(myTriangle.triangleType)
print("angles of myTriangle are: A= \(myTriangle.internalAngles.angleA)°, B= \(myTriangle.internalAngles.angleB)°, C= \(myTriangle.internalAngles.angleC)°")

print("your triangle is a/an: \(myTriangle.triangleType) one")


myTriangle.calculateArea()
myTriangle.calculatePerimeter()
print("area of myTriangle: \(myTriangle.area)")
print("perimeter of myTriangle: \(myTriangle.perimeter)")

//creating a square
print("----------square----------")
let mySquare = Square(Point(x: 0, y: 0), Point(x: 0, y: 3), Point(x: 3, y: 3), Point(x: 3, y: 0))
print("your square is a: \(mySquare.type), especifically is a: \(mySquare.quadrangleType)")

mySquare.calculateArea()
print("area of mySquare = \(mySquare.area)")
mySquare.calculatePerimeter()
print("perimeter of mySquare = \(mySquare.perimeter)")

//creating a rhombus
print("----------rhombus----------")
let myRhombus = Rhombus(Point(x: 2, y: 3), Point(x: 4, y: 5), Point(x: 3, y: 7), Point(x: 0, y: 6))
myRhombus.calculateArea()
myRhombus.calculatePerimeter()
print("myRhombus area : \(myRhombus.area)")
print("myRhombus perimeter: \(myRhombus.perimeter)")


//creating a rectangle
print("----------rectangle----------")
let myRectangle = Rectangle(Point(x: 1, y: 2), Point(x: 6, y: 2), Point(x: 6, y: 5), Point(x: 1, y: 5))
myRectangle.calculateArea()
myRectangle.calculatePerimeter()
print("myRectangle area: \(myRectangle.area)")
print("myRectangle perimeter: \(myRectangle.perimeter)")


//maths instance
let maths = Mathematics(figures: [myTriangle, myRectangle, mySquare, myRhombus])
print("----------Maths testing----------")
print("figure with smallest area is: \(maths.smallestArea.figureName) with:  \(maths.smallestArea.value)")
print("figure with largest area si: \(maths.largestArea.figureName) with \(maths.largestArea.value)")
print("figure with smallest perimeter is: \(maths.smallestPerimeter.figureName) with \(maths.smallestPerimeter.value)")
print("figure with largest perimeter is: \(maths.largestPerimeter.figureName) with \(maths.largestPerimeter.value)")







