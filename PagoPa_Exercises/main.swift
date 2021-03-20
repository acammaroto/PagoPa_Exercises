//
//  main.swift
//  PagoPa_Exercise1
//
//  Created by Angelo Cammaroto on 16/03/21.
//

import Foundation

let exerciseOne: FirstExercise = FirstExercise();
let exerciseTwo: SecondExercise = SecondExercise();

let input1: [String] = ["a","b","c"] // 0
let input2: [String] = ["a","b","cc"] // 1
let input3: [String] = ["abc","deef","hi", "mnmn"] // 2
let input4: [String] = ["abc","deef","hi", "mnmn", "pippo"] // 3
let input5: [String] = ["abc","deef","hi", "mnmn", "pippo", "che mal di schiena"] // 4


let myArray = [[1,2,[["a"]],[4]]] as [Any]
let myArray1 = [[1,2,[[3]],[4]]] as [Any]


print(exerciseOne.calculateDuplicateIn(sourceArray:input3))

var flatArray: [Int];

do {
    try flatArray = exerciseTwo.flatFromNestedArray(myArray)
} catch ExerciseError.invalidArgumentFindInInput {
    print("String error")
    flatArray = []
}
print(flatArray)

