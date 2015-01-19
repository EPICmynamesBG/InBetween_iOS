//
//  PausedViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 12/17/14.
//  Copyright (c) 2014 CS222.InBetween. All rights reserved.
//

import UIKit

class PausedViewController: UIViewController {

    //UIViewController InGame =
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ResumeButton(sender: UIButton) {
        resumeGame()
    }
    @IBAction func ExitButton(sender: UIButton) {
        exitPopUp()
        //InGameViewController.load();
    }
    
    func exitPopUp() {
        let alert = UIAlertController(title: "Leaving?", message: "Are you sure you want to exit?",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default,
            handler: { action in
                switch action.style{
                case .Default:
                    println("default")
                    self.storyboard?.instantiateInitialViewController()
                    
                case .Cancel:
                    println("cancel")
                    
                case .Destructive:
                    println("destructive")
                }
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel,
            handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func resumeGame(){
        /*if (InGameViewController == nil){
            UIViewController InGameViewController = self.storyboard.instantiateViewControllerWithIdentifier("InGameViewController")
        }*/
        self.presentViewController(InGameViewController.self(), animated: true, completion: nil)
        self.loadView()
    }
}