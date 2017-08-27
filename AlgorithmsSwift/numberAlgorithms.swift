//
//  numberAlgorithms.swift
//  AlgorithmsSwift
//


import Foundation

//Factoryzation

func listOfInteger(number: Int) -> [Int] {
    var number = number
    var emptyInt: [Int] = []
    
    while ((number % 2) == 0) {
        emptyInt.append(2)
        number /= 2
    }
    
    var i:Int = 3
    var maxFactor = sqrt(Double(number))
    
    while (i <= Int(maxFactor)) {
        while ((number % i) == 0) {
            emptyInt.append(i)
            number /= i
            maxFactor = sqrt(Double(number))
        }
        i += 2
    }
    
    if (number > 1) {
        emptyInt.append(number)
    }
    
    return emptyInt
}

// GCD

func GCD( first: Int, second: Int) -> Int {
    var second = second
    var first = first
    while (second != 0) {
        let remaider = first % second
        first = second
        second = remaider
        
    }
    return first
}
