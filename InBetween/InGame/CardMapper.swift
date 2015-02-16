//
//  CardMapper.swift
//  InBetween
//
//  Created by Brandon Groff on 2/14/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import UIKit;

public class CardMapper : UIViewController {
    
    public func getCardImage(card : Card){
        var image : UIImage;
        if(card.getSuit() == Suit.DIAMONDS){
            switch(card.getValue()){
            case 1:
                image = UIImage(named: "card_ace_of_diamonds")!;
                break;
            case 2:
                image = UIImage(named: "card_two_of_diamonds")!;
                break;
            case 3:
                image = UIImage(named: "card_three_of_diamonds")!;
                break;
            case 4:
                image = UIImage(named: "card_four_of_diamonds")!;
                break;
            case 5:
                image = UIImage(named: "card_five_of_diamonds")!;
                break;
            case 6:
                image = UIImage(named: "card_six_of_diamonds")!;
                break;
            case 7:
                image = UIImage(named: "card_seven_of_diamonds")!;
                break;
            case 8:
                image = UIImage(named: "card_eight_of_diamonds")!;
                break;
            case 9:
                image = UIImage(named: "card_nine_of_diamonds")!;
                break;
            case 10:
                image = UIImage(named: "card_ten_of_diamonds")!;
                break;
            case 11:
                image = UIImage(named: "card_jack_of_diamonds")!;
                break;
            case 12:
                image = UIImage(named: "card_queen_of_diamonds")!;
                break;
            case 13:
                image = UIImage(named: "card_king_of_diamonds")!;
                break;
            default:
                image = UIImage(named: "card_back")!;
                break;
            }
        }
        else if (card.getSuit() == Suit.HEARTS){
            switch(card.getValue()){
            case 1:
                image = UIImage(named: "card_ace_of_hearts")!;
                break;
            case 2:
                image = UIImage(named: "card_two_of_hearts")!;
                break;
            case 3:
                image = UIImage(named: "card_three_of_hearts")!;
                break;
            case 4:
                image = UIImage(named: "card_four_of_hearts")!;
                break;
            case 5:
                image = UIImage(named: "card_five_of_hearts")!;
                break;
            case 6:
                image = UIImage(named: "card_six_of_hearts")!;
                break;
            case 7:
                image = UIImage(named: "card_seven_of_hearts")!;
                break;
            case 8:
                image = UIImage(named: "card_eight_of_hearts")!;
                break;
            case 9:
                image = UIImage(named: "card_nine_of_hearts")!;
                break;
            case 10:
                image = UIImage(named: "card_ten_of_hearts")!;
                break;
            case 11:
                image = UIImage(named: "card_jack_of_hearts")!;
                break;
            case 12:
                image = UIImage(named: "card_queen_of_hearts")!;
                break;
            case 13:
                image = UIImage(named: "card_king_of_hearts")!;
                break;
            default:
                image = UIImage(named: "card_back")!;
                break;
            }
        }
        else if(card.getSuit() == Suit.SPADES){
            switch(card.getValue()){
            case 1:
                image = UIImage(named: "card_ace_of_spades")!;
                break;
            case 2:
                image = UIImage(named: "card_two_of_spades")!;
                break;
            case 3:
                image = UIImage(named: "card_three_of_spades")!;
                break;
            case 4:
                image = UIImage(named: "card_four_of_spades")!;
                break;
            case 5:
                image = UIImage(named: "card_five_of_spades")!;
                break;
            case 6:
                image = UIImage(named: "card_six_of_spades")!;
                break;
            case 7:
                image = UIImage(named: "card_seven_of_spades")!;
                break;
            case 8:
                image = UIImage(named: "card_eight_of_spades")!;
                break;
            case 9:
                image = UIImage(named: "card_nine_of_spades")!;
                break;
            case 10:
                image = UIImage(named: "card_ten_of_spades")!;
                break;
            case 11:
                image = UIImage(named: "card_jack_of_spades")!;
                break;
            case 12:
                image = UIImage(named: "card_queen_of_spades")!;
                break;
            case 13:
                image = UIImage(named: "card_king_of_spades")!;
                break;
            default:
                image = UIImage(named: "card_back")!;
                break;
            }
        }
        else if(card.getSuit() == Suit.CLUBS){
            switch(card.getValue()){
            case 1:
                image = UIImage(named: "card_ace_of_clubs")!;
                break;
            case 2:
                image = UIImage(named: "card_two_of_clubs")!;
                break;
            case 3:
                image = UIImage(named: "card_three_of_clubs")!;
                break;
            case 4:
                image = UIImage(named: "card_four_of_clubs")!;
                break;
            case 5:
                image = UIImage(named: "card_five_of_clubs")!;
                break;
            case 6:
                image = UIImage(named: "card_six_of_clubs")!;
                break;
            case 7:
                image = UIImage(named: "card_seven_of_clubs")!;
                break;
            case 8:
                image = UIImage(named: "card_eight_of_clubs")!;
                break;
            case 9:
                image = UIImage(named: "card_nine_of_clubs")!;
                break;
            case 10:
                image = UIImage(named: "card_ten_of_clubs")!;
                break;
            case 11:
                image = UIImage(named: "card_jack_of_clubs")!;
                break;
            case 12:
                image = UIImage(named: "card_queen_of_clubs")!;
                break;
            case 13:
                image = UIImage(named: "card_king_of_clubs")!;
                break;
            default:
                image = UIImage(named: "card_back")!;
                break;
            }
        }
        else{
            image = UIImage(named: "card_back")!;
        }
    }
    
}