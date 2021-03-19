//
//  ExerciseTwoUnitTest.swift
//  PapoPaUnitTest
//
//  Created by Angelo Cammaroto on 16/03/21.
//

import XCTest

class ExerciseTwoUnitTest: XCTestCase {
 
    var exercise2: SecondExercise!
    
    override func setUp() {
        super.setUp()
        exercise2 = SecondExercise();
        
    }
    
    func testGivenAnEmptyArrayThenExpectEmptyArrayAsResult() throws {
        let input:[Any] = []
        let result = try exercise2.flatFromNestedArray(input)
        XCTAssertEqual(result, [])
    }
    
    func testGivenAnEmptyNestedArrayThenExpectArrayAsResult() throws {
        let input:[Any] = [1,[],[2],3]
        let result = try exercise2.flatFromNestedArray(input)
        XCTAssertEqual(result, [1,2,3])
    }
    
    func testGivenAWholeEmptyNestedArrayThenExpectemptyArrayAsResult() throws {
        let input:[Any] = [[],[],[]]
        let result = try exercise2.flatFromNestedArray(input)
        XCTAssertEqual(result, [])
    }
    
    func testGivenAValidInputArrayThenExpectTheFlatResult() throws{
        let input = [[1,2,[[3]],[4]]] as [Any]
        let result = try exercise2.flatFromNestedArray(input)
        XCTAssertEqual(result, [1,2,3,4])
    }
    
    func testGivenAMalformedInputArrayThenRaiseACustomException() throws {
        let input = [[1,2,[["a"]], nil, [4]]] as [Any]
        var result: [Int];
        do {
            try result = exercise2.flatFromNestedArray(input)
        } catch ExerciseError.invalidArgumentFindInInput {
            print("Error")
            result = []
        }
        XCTAssertEqual(result, [])
    }
}
