//
//  Algorithm.swift
//  largestProductInASeries
//
//  Created by Kev Washington on 9/16/15.
//  Copyright (c) 2015 Kev Washington. All rights reserved.
//

import UIKit


class Algorithm: NSObject {
    
    func ensureTestsAreWorking() -> String {
        return "Tests are working";
    }
    
    func findLargestProductInSeries(series: String, adjacentCount: Int ) -> Int {
//        var largestProductVariable;
//        var adjacentDigitsVariable;
        
        var count = 0;
        var adjacentDigits = [Character]();
        for integer in series {
            adjacentDigits.append(integer);
            count++;
            if(count == adjacentCount) {
                var sum = 0;
                for digit in adjacentDigits {
                    var toInteger: Int = Int(digit);
                    sum += toInteger;
                }
            }
        }
        
    }
    
   
}
