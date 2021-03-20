//
//  ExcerciseTwo.swift
//  PagoPa_Exercise1
//
//  Created by Angelo Cammaroto on 16/03/21.
//

import Foundation

class SecondExercise {
    func flatFromNestedArray(_ array: [Any]) throws -> [Int]{
        
        var result = [Int]()
        do {
            try array.forEach {
                item in
                if let arr = item as? [Any] {
                    let nestedArray = try flatFromNestedArray(arr)
                    result = result + nestedArray
                }
                else {
                    guard let number =  item as? Int else {
                        throw ExerciseError.invalidArgumentFindInInput
                    }
                    result.append(number)
                }
            }
            return result
        }
    }
}
