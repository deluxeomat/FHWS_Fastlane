//
//  CalcPi.swift
//  MegaApp
//
//  Created by Michael on 19.11.16.
//  Copyright © 2016 Michael Kilian. All rights reserved.
//

import Foundation
import Darwin

class Calc: NSObject {
    
    static func getPi() -> Double {
        
        var returnValue: Double = 0.0
        
        for i in 0...1000000 {
            returnValue += pow((-1), Double(i)) / Double((2 * i) + 1)
        }
        returnValue *= 8
                
        return returnValue
    }
}
