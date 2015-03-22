//
//  InGameViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 12/17/14.
//  Copyright (c) 2014 CS222.InBetween. All rights reserved.
//

import UIKit

class InGameViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.navigationBarHidden = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //if UIInterfaceOrientationIsPortrait(UIInterfaceOrientationMask.RawValue){
        //    UIInterfaceOrientation.LandscapeLeft;
        //}
        
        //UINavigationController.setNavigationBarHidden(true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}