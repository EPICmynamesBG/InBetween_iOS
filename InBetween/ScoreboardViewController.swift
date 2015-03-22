//
//  ScoreboardViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 1/19/15.
//  Copyright (c) 2015 CS222.InBetween. All rights reserved.
//

import UIKit

class ScoreboardViewController: UIViewController, UITextFieldDelegate {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.navigationBarHidden = false;
    }
}