//
//  Card.swift
//  InBetween
//
//  Created by Brandon Groff on 2/10/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import Foundation

public class Card {
    
    private var suit: Suit;
    private var value: Int;
    
    private let DEFAULT_SUIT:Suit = Suit.DIAMONDS;
    private let DEFAULT_VALUE:Int = 1;
    
    public init(){
        self.suit = DEFAULT_SUIT;
        self.value = DEFAULT_VALUE;
    }
    
    public init(suit:Suit, value:Int){
        self.suit = suit;
        self.value = value;
    }
    
    public func setSuit(suit:Suit){
        self.suit = suit;
    }
    
    public func setValue(value:Int){
        self.value = value;
    }
    
    public func getSuit()->Suit{
        return suit;
    }
    
    public func getValue()->Int{
        return value;
    }
    
    public func isSameValue(comparingCard:Card)->Bool{
        if(comparingCard.getValue() == value){
            return true;
        }
        return false;
    }
    
    // compares cards in hand to the one drawn to see if they are in between
    public func isBetween(comparingHand: Hand)->Bool{
        if(self.getValue() < comparingHand.getFirstCard().getValue()
            && self.getValue() > comparingHand.getSecondCard().getValue()){
                return true;
        }
        else if (self.getValue() > comparingHand.getFirstCard().getValue()
            && self.getValue() < comparingHand.getSecondCard().getValue()){
                return true;
        }
        else{
            return false;
        }
    }
    
    
}