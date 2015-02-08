//
//  Pot.swift
//  InBetween
//
//  Created by Brandon Groff on 2/8/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import Foundation

public class Pot {
    
    private var potSize: Money = Money(money: 0);
    
    init(potSize: Money){
        self.potSize = potSize;
    }
    
    public func getPotSize() -> Int {
        return potSize.getAmount();
    }
    
    public func addToPot(i :Int){
        potSize.add(i);
    }
    
    public func collectWinnings(bet :Int) ->Int {
        var returnAmount = bet*2;
        if (betReturnExceedsPotSize(bet) == true){
            returnAmount=potSize.getAmount();
        }
        potSize.subtract(returnAmount);
        return returnAmount;
    }
    
    private func betReturnExceedsPotSize(bet :Int) -> Bool {
        if (potSize.getAmount() < bet){
            return true;
        }
        return false;
    }
    
    public func returnAnteAmount(var amount: Int) ->Int{
        if (betReturnExceedsPotSize(amount) == true){
            amount = potSize.getAmount();
        }
        potSize.subtract(amount);
        return amount;
    }
}