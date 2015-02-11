//
//  RandomNumberGenerator.swift
//  InBetween
//
//  Created by Brandon Groff on 2/10/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import Foundation

public class RandomNumberGenerator{
    
    public func generateRandomInt(index:Int) -> Int {
        var randomInt = Int(arc4random_uniform(UInt32(index)));
        if (randomInt<0){
            randomInt = 0;
        }
        return randomInt;
    }
}