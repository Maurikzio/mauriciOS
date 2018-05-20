//: Playground - noun: a place where people can play

import UIKit


//1
struct Point{
    let x: Int
    let y: Int
    init(){
        self.x = 0
        self.y = 0
    }
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}

//2
enum FigureType{
    case unknown
    case dot
    case line
    case triangle
    case square
    case polygon
    
    var figureDescription: String{
        return "is a \(self)"
    }
}

//1
struct Figure{
    let points: [Point]
    let type: FigureType
    //3
    init(points: [Point]) {
        self.points = points
        if(points.count == 0){
            self.type = .unknown
        }else if points.count == 1{
            self.type = .dot
        }else if points.count == 2{
            self.type = .line
        }else if points.count == 3{
            self.type = .triangle
        }else if points.count == 4{
            self.type = .square
        }else{
            self.type = .polygon
        }
        print("your figure \(self.type.figureDescription)")
    }
    //4
    subscript(index: Int) -> Point{
        get{
            return points[index]
        }
    }
}
extension Point{
    static func distance(from point1: Point, to point2: Point) -> Double{
        let distanceX = Double(point1.x - point2.x)
        let distanceY = Double(point1.y - point2.y)
        return ((distanceX * distanceX) + (distanceY * distanceY)).squareRoot()
    }
}
extension Figure{
    static func area(of figure: Figure) -> Double{
        var area: Double
        switch figure.type {
        case .unknown:
            area = 0.0
        case .dot:
            area = 0.1
        case .line:
            area = 0.2
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
//            let firstAndLastPointDistance = Point.distance(from: figure.points[0], to: figure.points[figure.points.count-1])
//            perimeter += firstAndLastPointDistance
        }
        return perimeter
    }
}

let myPoints: [Point] = [Point(x: 3, y: 1), Point(x: 6, y: 2)]
let myFigure1 = Figure(points: myPoints)
//using the subscript created
myFigure1[1].x
myFigure1[1].y

myFigure1.type

Figure.area(of: myFigure1)
Figure.perimeter(of: myFigure1)













