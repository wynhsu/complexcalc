//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ list: [Int]) -> Int {
        var sum: Int = 0
        for num in list {
            sum += num
        }
        return sum
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let x: Int = lhs.0 + rhs.0
        let y: Int = lhs.1 + rhs.1
        return (x, y)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let lx: Int! = lhs["x"]
        let rx: Int! = rhs["x"]
        let x = lx + rx
        let ly: Int! = lhs["y"]
        let ry: Int! = rhs["y"]
        let y = ly + ry
        return [ "x": x, "y": y ]
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let x: Int = lhs.0 - rhs.0
        let y: Int = lhs.1 - rhs.1
        return (x, y)
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let lx: Int! = lhs["x"]
        let rx: Int! = rhs["x"]
        let x = lx - rx
        let ly: Int! = lhs["y"]
        let ry: Int! = rhs["y"]
        let y = ly - ry
        return [ "x": x, "y": y ]
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ list: [Int]) -> Int {
        var product: Int = 1
        for num in list {
            product *= num
        }
        return product
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ list: [Int]) -> Int {
        var count: Int = 0
        while count < list.count {
            count += 1
        }
        return count
    }
    
    func avg(_ list: [Int]) -> Int {
        var sum: Int = 0
        var count: Int = 0
        for num in list {
            sum += num
            count += 1
        }
        return sum / count
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        let result = op(lhs, rhs)
        return  result
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        return args.reduce(beg, {op($0, $1)} )
    }
}
