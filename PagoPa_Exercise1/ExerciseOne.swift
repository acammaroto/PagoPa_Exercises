//
//  esercizio1.swift
//  PagoPa_Exercise1
//
//  Created by Angelo Cammaroto on 16/03/21.
//

import Foundation

class FirstExercise {
    
    func calculateDuplicateIn(sourceArray:[String]) -> Int {
        var duplicateCounter = 0
        for selectedString in sourceArray {
            if(foundedDusplicatesIn(string: selectedString)) {
                duplicateCounter += 1
            }
        }
        return duplicateCounter;
    }

    private func foundedDusplicatesIn(string: String) -> Bool {
        let stringToAnalyze = string.lowercased()
        for firstIndex in stringToAnalyze.indices {
            for secondIndex in stringToAnalyze.indices.suffix(from: stringToAnalyze.index(after: firstIndex)) {
                  if (stringToAnalyze[firstIndex] == stringToAnalyze[secondIndex]) {
                    return true;
                  }
              }
          }
        return false;
    }

}
