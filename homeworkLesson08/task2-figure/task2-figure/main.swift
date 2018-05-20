//
//  main.swift
//  task2-figure
//
//  Created by Mauricio on 5/13/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

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
enum FigureType: String{
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


//let myPoints: [Point] = [Point(x: 3, y: 1), Point(x: 6, y: 2), Point(x: 6, y: 5), Point(x: 3, y: 5), Point(x: 1, y: 3)]
let myPoints: [Point] = [Point(x: 3, y: 1), Point(x: 6, y: 2)]
let myFigure1 = Figure(points: myPoints)
print(myFigure1.showArea)
print(myFigure1.showPerimeter)
//using the subscript created
/*
myFigure1[1].x
myFigure1[1].y

myFigure1.type

Figure.area(of: myFigure1)
Figure.perimeter(of: myFigure1)*/













