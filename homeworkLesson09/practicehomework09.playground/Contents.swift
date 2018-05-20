//: Playground - noun: a place where people can play

import UIKit

enum FigureType: String{
    case unknown
    case line
    case triangle
    case square
}

enum TriangleType {
    case unknown
    case right
    case obtuse
    case acute
}

struct Point{
    var x: Double = 0.0
    var y: Double = 0.0
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

class Figure{
    let type: FigureType = .unknown
    var points: [Point]
    
    var area = 0.0
    var perimeter = 0.0
    
    init(points: [Point]){
        self.points = points
    }
    
    func calculateArea(){
        //formule for each figure for area
    }
    func calculatePerimeter(){
        //formule for each figure for perimeter
    }
    
    static func distanceOfPoints(from point1: Point, to point2: Point) -> Double{
        let distanceX = Double(point1.x - point2.x)
        let disctanceY = Double(point1.y - point2.y)
        return (distanceX * distanceX + disctanceY * disctanceY).squareRoot()
    }
}

struct Vector {
    var coordinates: Point
    init(){
        let _x = 0.0
        let _y = 0.0
        self.coordinates = Point(x: _x, y: _y)
    }
    init(origin: Point, end: Point){
        let xcoord = end.x - origin.x
        let ycoord = end.y - origin.y
        self.coordinates = Point(x: xcoord, y: ycoord)
    }
    var modulus: Double{
        return (pow(self.coordinates.x, 2.0) + pow(self.coordinates.y, 2.0)).squareRoot()
    }
    func scalarProduct(by vector2: Vector) -> Double{
        return (self.coordinates.x * vector2.coordinates.x) + (self.coordinates.y * vector2.coordinates.y)
    }
    func angle(between vector2: Vector) -> Double{
        let angle: Double = scalarProduct(by: vector2) / (self.modulus * vector2.modulus)
        return acos(angle)*180/Double.pi
    }
}
var vect1 = Vector()
vect1.coordinates.x = -3
vect1.coordinates.y = -3
vect1.modulus

var vect2 = Vector()
vect2.coordinates.x = 2
vect2.coordinates.y = -5

vect1.angle(between: vect2)

vect1.scalarProduct(by: vect2)


class Line: Figure{
    let pointsNumber = 2
    let initialPoint: Point
    let finalPoint: Point
    
    init(_ initialPoint: Point, _ finalPoint: Point){
        self.initialPoint = initialPoint
        self.finalPoint = finalPoint
        super.init(points: [initialPoint, finalPoint])
    }
    var distanceBetweenPoints: Double{
        return Figure.distanceOfPoints(from: initialPoint, to: finalPoint)
    }
    var vector: Vector{
        return Vector(origin: initialPoint, end: finalPoint)
    }
}
let myLine = Line(Point(x: 2, y: 4), Point(x: 4, y: -1))
myLine.distanceBetweenPoints


class Triangle: Figure{
    let pointsNumber = 3
    init(_ pointA: Point, _ pointB: Point, _ pointC: Point){
        super.init(points: [pointA, pointB, pointC])
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
        angleA = (acos(angleA)*180)/Double.pi
        var angleB = vectorBC.scalarProduct(by: vectorBA) / (vectorBC.modulus * vectorBA.modulus)
        angleB = (acos(angleB)*180)/Double.pi
        var angleC = vectorCA.scalarProduct(by: vectorCB) / (vectorCA.modulus * vectorCB.modulus)
        angleC = (acos(angleC)*180)/Double.pi

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
        
        area = (S*(S - lengthAB)*(S - lengthBC)*(S - lengthAC)).squareRoot()
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

let triangle1 = Triangle(Point(x: -2, y: 1), Point(x: 1, y: 4), Point(x: 4, y: 1))
triangle1.internalAngles.angleA
triangle1.internalAngles.angleB
triangle1.internalAngles.angleC
triangle1.triangleType
triangle1.calculateArea()
triangle1.area
triangle1.calculatePerimeter()
triangle1.perimeter


class Quadrangle: Figure{
    let pointsNumber = 4
    init(_ pointA: Point, _ pointB: Point, _ pointC: Point, _ pointD: Point){
        super.init(points: [pointA, pointB, pointC, pointD])
    }
    override func calculateArea() {
        let A = points[0]
        let B = points[1]
        let C = points[2]
        let D = points[3]
        
        let AB = Figure.distanceOfPoints(from: A, to: B)
        let BC = Figure.distanceOfPoints(from: B, to: C)
        let CD = Figure.distanceOfPoints(from: C, to: D)
        let DA = Figure.distanceOfPoints(from: D, to: A)
        
        let S = (AB + BC + CD + DA) / 2
        
        area = (S*(S - AB)*(S - BC)*(S - CD)*(S - DA)).squareRoot()
    }
    
    override func calculatePerimeter() {
        let A = points[0]
        let B = points[1]
        let C = points[2]
        let D = points[3]
        
        let AB = Figure.distanceOfPoints(from: A, to: B)
        let BC = Figure.distanceOfPoints(from: B, to: C)
        let CD = Figure.distanceOfPoints(from: C, to: D)
        let AD = Figure.distanceOfPoints(from: A, to: D)
        
        perimeter = AB + BC + CD + AD
    }
}

class Square: Quadrangle{ }

class Rhombus: Quadrangle{ }

class Rectangle: Quadrangle{ }


var x = 5.238
(x*100).rounded()/100




