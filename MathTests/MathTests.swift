//
//  MathTests.swift
//  MathTests
//
//  Created by  on 14-7-8.
//  Copyright (c) 2014 OneV's Den. All rights reserved.
//

import UIKit
import XCTest
import Math

class MathTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
        
    }
    
    func testSumOfInt() {
        let sum1 = Σ(1, 2, 3)
        let sum2 = sumOf(1, 2, 3)

        let arr = [1, 2, 3]
        let sum3 = Σ(arr)
        
        let sum4 = sumOf(arr)
        let sum5 = sumOf(arr[0...1])

        XCTAssertEqual(6, sum1, "Int should be sumable")
        XCTAssertEqual(6, sum2, "Int should be sumable")
        XCTAssertEqual(6, sum3, "Int should be sumable")
        XCTAssertEqual(6, sum4, "Int should be sumable")
        XCTAssertEqual(3, sum5, "Int should be sumable")
    }
    
    func testSumOfDouble() {
        let sum1 = Σ(1.1, 2.2, 3.3)
        let sum2 = sumOf(1.1, 2.2, 3.3)

        let arr = [1.1, 2.2, 3.3]
        let sum3 = Σ(arr)
        let sum4 = sumOf(arr)
        let sum5 = sumOf(arr[0...1])
        
        let accuracy = 1E-10
        XCTAssertEqualWithAccuracy(6.6, sum1, accuracy, "Double should be sumable")
        XCTAssertEqualWithAccuracy(6.6, sum2, accuracy, "Double should be sumable")
        XCTAssertEqualWithAccuracy(6.6, sum3, accuracy, "Double should be sumable")
        XCTAssertEqualWithAccuracy(6.6, sum4, accuracy, "Double should be sumable")
        XCTAssertEqualWithAccuracy(3.3, sum5, accuracy, "Double should be sumable")
    }
    
    func testSumOfString() {
        let sum1 = Σ("Hello",",","world")
        let sum2 = sumOf("Hello",",","world")

        let arr = ["Hello", ",", "world"]
        let sum3 = Σ(arr)
        let sum4 = sumOf(arr)
        
        XCTAssertEqual("Hello,world", sum1, "String should be sumable")
        XCTAssertEqual("Hello,world", sum2, "String should be sumable")
        XCTAssertEqual("Hello,world", sum3, "String should be sumable")
        XCTAssertEqual("Hello,world", sum4, "String should be sumable")
    }
    
    func testFactorial() {
        let factorial = 10~!
        XCTAssertEqual(factorial, 3_628_800, "Factorial should be calculated correctly!");
    }
    
    func testProduct() {
        let product = productOf(2,3,4)
        XCTAssertEqual(24, product, "Product should be ok")
    }

}
