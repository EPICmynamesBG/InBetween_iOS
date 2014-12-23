//
//  PausedViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 12/17/14.
//  Copyright (c) 2014 CS222.InBetween. All rights reserved.
//

import UIKit

class PausedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ExitButton(sender: UIButton) {
        exitPopUp()
        InGameViewController.load();
    }
    
    func exitPopUp() {
        let alert = UIAlertController(title: "Leaving?", message: "Are you sure you want to exit?",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default,
            handler: nil))
        //alert.presentViewController(
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel,
            handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func resumeGame(){
        self.presentViewController(InGameViewController.self(), animated: true, completion: nil)
        
        
        //self.loadView(InGameViewController.load())
        //InGameViewController.restoreUserActivityState(nil)
        
        /*let storyboard = UIStoryboard(name: "Help", bundle: nil);
        let vc = storyboard.instantiateViewControllerWithIdentifier("Help View Controller") as UIViewController;
        self.presentViewController(vc, animated: true, completion: nil);*/
    }
}