//
//  Hand.swift
//  InBetween
//
//  Created by Brandon Groff on 2/10/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import Foundation

public class Hand{
    
    private var firstCard: Card = Card();
    private var secondCard: Card =  Card();
    
    public init(firstCard: Card, secondCard: Card){
        self.firstCard = firstCard;
        self.secondCard = secondCard;
    }
    
    public func getFirstCard()->Card{
        return firstCard;
    }
    
    public func getSecondCard()->Card{
        return secondCard;
    }
    
    public func setFirstCard(settingCard: Card){
        self.firstCard = settingCard;
    }
    
    public func setSecondCard(settingCard: Card){
        self.secondCard = settingCard;
    }
    
    public func getRange()->Int{
        return Int(abs(Int32(self.firstCard.getValue() - self.secondCard.getValue())));
    }
    
    public func areCardsSameValue()->Bool{
        return firstCard.isSameValue(secondCard);
    }
    
}