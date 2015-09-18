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
    
   
}
