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
    
    func convertStringIntoArrayOfIntegers(stringToConvert: String) -> [Int] {
        var integerArray = [Int]();
        for s in stringToConvert.characters {
            let convertToString: String = String(s);
            let convertToTempInt: Int? = Int(convertToString);
            let convertToTrueInt: Int = convertToTempInt!;
            integerArray.append(convertToTrueInt);
        }
        return integerArray;
    }
    
    func findProductOfSpecifiedRangeOfElementsInIntArray(intArray: [Int], rangeStart: Int, rangeStop: Int) -> Int {
        var productOfRanges: Int = 1;
        var counter = rangeStart;
        while(counter <= rangeStop) {
            productOfRanges *= intArray[counter]
            counter++;
        }
        return productOfRanges;
    }
    
    func findGreatestProductOfAdjacentIntegersInAString(stringToConvert: String, maxAdjacentIntegers: Int) -> Int {
        
        var productToReturn: Int = 0;

        let integerArray = self.convertStringIntoArrayOfIntegers(stringToConvert);
        let lastIndex = integerArray.endIndex - 1;
        var startIndex = integerArray.startIndex;
        var pushAhead = maxAdjacentIntegers - 1;
        
        while(pushAhead <= lastIndex) {
            let product: Int = self.findProductOfSpecifiedRangeOfElementsInIntArray(integerArray, rangeStart: startIndex, rangeStop: pushAhead);
            productToReturn = (product > productToReturn) ? product : productToReturn;
            startIndex++;
            pushAhead++;
        }
        return productToReturn;
    }
    
    
    
   
}
