//
//  Money.swift
//  InBetween
//
//  Created by Brandon Groff on 2/8/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import Foundation

public class Money {
    
    private var value: Int;
    
    init(money: Int) {
        self.value = money;
    }
    
    public func getAmount() -> Int{
        return self.value;
    }
    
    public func add(wonMoney: Int){
        self.value += wonMoney;
    }
    
    public func subtract(lostMoney : Int){
        self.value -= lostMoney;
    }
}