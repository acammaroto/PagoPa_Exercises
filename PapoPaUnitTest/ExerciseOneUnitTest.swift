//
//  ExerciseOneUnitTest.swift
//  PapoPaUnitTest
//
//  Created by Angelo Cammaroto on 16/03/21.
//

import XCTest

class ExerciseOneUnitTest: XCTestCase {
    
    var exercise1: FirstExercise!
    
    override func setUp() {
        super.setUp()
        exercise1 = FirstExercise();
        
    }
    
    func testGivenAnArrayWithoutDuplicatesThenExpectZeroAsResult() {
        let input: [String] = ["a","b","c"] // 0
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 0);
    }
    
    func testGivenAnArrayWithOneDuplicateThenExpectOneAsResult() {
        let input: [String] = ["a","b","cc"] // 1
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 1);
    }
    
    func testGivenAnArrayWithTwoDuplicateThenExpectTwoAsResult() {
        let input: [String] = ["abc","deef","hi", "mnmn"] // 2
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 2);
    }
    
    func testGivenAnArrayWithThreeDuplicateThenExpectThreeAsResult() {
        let input: [String] = ["abc","deef","hi", "mnmn", "pippo"] // 3
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 3);
    }
    
    
    func testGivenAnArrayWithFourDuplicateThenExpectFourAsResult() {
        let input: [String] = ["abc","deef","hi", "mnmn", "pippo", "che mal di schiena"] // 4
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 4);
    }
    
    
    func testGivenAnEmptyArrayThenExpectZeroAsResult() {
        let input:[String] = []
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 0);
    }
    
    func testGivenAnArrayWithEmptyStringsThenExpectZeroAsResult() {
        let input: [String] = ["","","", "", "", ""]
        let result = exercise1.calculateDuplicateIn(sourceArray: input)
        XCTAssertEqual(result, 0);
    }
    
    func testFindDuplicatePerformance() {
        let input: [String] = ["abc","deef","hi", "mnmn", "pippo", "che mal di schiena"] // 4
        measure {
            _ = exercise1.calculateDuplicateIn(sourceArray: input)
            
        }
    }
}
