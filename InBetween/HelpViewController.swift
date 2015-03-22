//
//  HelpViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 12/17/14.
//  Copyright (c) 2014 CS222.InBetween. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    
    
    @IBOutlet weak var helpText: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.navigationBarHidden = false;
        helpText.contentOffset = CGPointMake(0, -220);
    }
    
}