//
//  AlgorithmTest.swift
//  largestProductInASeries
//
//  Created by Kev Washington on 9/16/15.
//  Copyright (c) 2015 Kev Washington. All rights reserved.
//

import UIKit
import XCTest

class AlgorithmTest: XCTestCase {

    func testTestsAreWorking() {
        let alg = Algorithm();
        var result = alg.ensureTestsAreWorking();
        var correct = "Tests are working";
        XCTAssertEqual(correct, result);
    }

}
