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

//Find Factors

func FindFactors(number: Int) -> Array<Int> {
      var number = number
      var factors: [Int] = []
      var index:Int = 2
      
      while (index < number) {
            while ((number % index) == 0) {
                  factors.append(index)
                  number /= index
            }
            index += 1
      }
      
      if number>1 {
            factors.append(number)
      }
      return factors
}

//Find Primes

func FindPrimes(max_number: Int) -> Array<Int> {
      var is_composite = Array(repeating: false, count: max_number+1)
      
      for index in stride(from: 4, to: max_number, by: 2) {
            is_composite[index] = true
      }
      
      var next_prime = 3
      let stop_at = sqrt(Double(max_number))
      while next_prime<=Int(stop_at) {
            for index in stride(from: next_prime*2, to: max_number, by: next_prime) {
                  is_composite[index] = true
            }
            next_prime += 2
            while ((next_prime <= max_number) && (is_composite[next_prime])) {
                  next_prime = next_prime + 2
            }
      }
      
      var primes: Array<Int> = []
      
      for index in 2...max_number {
            if (!is_composite[index]) {
                  primes.append(index)
            }
      }
      return primes
      
      
      
      
      
      
}








