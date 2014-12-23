//
//  SettingsViewController.swift
//  InBetween
//
//  Created by Brandon Groff on 12/17/14.
//  Copyright (c) 2014 CS222.InBetween. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var CPU_Players: UITextField!
    @IBOutlet weak var HardCPUswitch: UISwitch!
    @IBOutlet weak var Pot_Size: UITextField!
    @IBOutlet weak var Default_Ante: UITextField!
    @IBOutlet weak var Starting_Money: UITextField!
    //@IBOutlet var namePreferenceField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        loadSettings()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadSettings() {
        var num_CPU_players = NSUserDefaults.standardUserDefaults().stringForKey(String(SettingsKeys.CPUplayers))
        var CPUdifficulty:Bool = NSUserDefaults.standardUserDefaults().boolForKey(SettingsKeys.hardCPU.description)
        var potSize = NSUserDefaults.standardUserDefaults().stringForKey(String(SettingsKeys.potSize))
        var ante = NSUserDefaults.standardUserDefaults().stringForKey(String(SettingsKeys.ante))
        var startMoney = NSUserDefaults.standardUserDefaults().stringForKey(String(SettingsKeys.startingMoney))
        CPU_Players!.text = num_CPU_players
        HardCPUswitch!.setOn(CPUdifficulty, animated: true)
        Pot_Size!.text = potSize
        Default_Ante!.text = ante
        Starting_Money!.text = startMoney
    }
    
    @IBAction func saveClick(sender: UIButton) {
        CPU_Players!.resignFirstResponder();
        HardCPUswitch!.resignFirstResponder();
        Pot_Size!.resignFirstResponder();
        Default_Ante!.resignFirstResponder();
        Starting_Money!.resignFirstResponder();
        checkIfAnyFieldsEmpty()
        
        NSUserDefaults.standardUserDefaults().setValue(CPU_Players!.text, forKey:String(SettingsKeys.CPUplayers))
        NSUserDefaults.standardUserDefaults().setBool(HardCPUswitch!.on, forKey: SettingsKeys.hardCPU.description)
        NSUserDefaults.standardUserDefaults().setValue(Pot_Size!.text, forKey:String(SettingsKeys.potSize))
        NSUserDefaults.standardUserDefaults().setValue(Default_Ante!.text, forKey:String(SettingsKeys.ante))
        NSUserDefaults.standardUserDefaults().setValue(Starting_Money!.text, forKey:String(SettingsKeys.startingMoney))
        NSUserDefaults.standardUserDefaults().synchronize()
        savePopUp()
    }
    
    @IBAction func defaultSettingsClick(sender: UIButton) {
        loadDefaultSettings()
        NSUserDefaults.standardUserDefaults().synchronize()
        defaultPopUp()
    }
    
    func loadDefaultSettings(){
        var num_CPU_players = String(SettingsKeys.defaultCPUplayers)
        var cpuSwitch = SettingsKeys.defaultHardCPU
        var potSize = String(SettingsKeys.defaultPotSize)
        var ante = String(SettingsKeys.defaultAnte)
        var startMoney = String(SettingsKeys.defaultStartingMoney)
        
        CPU_Players!.text = num_CPU_players
        HardCPUswitch!.setOn(cpuSwitch, animated: true)
        Pot_Size!.text = potSize
        Default_Ante!.text = ante
        Starting_Money!.text = startMoney
        
        CPU_Players!.resignFirstResponder();
        HardCPUswitch!.resignFirstResponder();
        Pot_Size!.resignFirstResponder();
        Default_Ante!.resignFirstResponder();
        Starting_Money!.resignFirstResponder();
        
        NSUserDefaults.standardUserDefaults().setValue(CPU_Players!.text, forKey:String(SettingsKeys.defaultCPUplayers))
        NSUserDefaults.standardUserDefaults().setBool(HardCPUswitch!.on, forKey: SettingsKeys.defaultHardCPU.description)
        NSUserDefaults.standardUserDefaults().setValue(Pot_Size!.text, forKey:String(SettingsKeys.defaultPotSize))
        NSUserDefaults.standardUserDefaults().setValue(Default_Ante!.text, forKey:String(SettingsKeys.defaultAnte))
        NSUserDefaults.standardUserDefaults().setValue(Starting_Money!.text, forKey:String(SettingsKeys.defaultStartingMoney))
    }
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    func savePopUp() {
        let alert = UIAlertController(title: "Saved!", message: "Custom settings saved!",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel,
            handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func defaultPopUp() {
        let alert = UIAlertController(title: "Saved!", message: "Default settings restored!",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel,
            handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func checkIfAnyFieldsEmpty() {
        var num_CPU_players = String(SettingsKeys.defaultCPUplayers)
        var potSize = String(SettingsKeys.defaultPotSize)
        var ante = String(SettingsKeys.defaultAnte)
        var startMoney = String(SettingsKeys.defaultStartingMoney)
        if CPU_Players!.text.isEmpty {
            CPU_Players!.text = num_CPU_players;
        }
        if Pot_Size!.text.isEmpty{
            Pot_Size!.text = potSize;
        }
        if Default_Ante!.text.isEmpty{
            Default_Ante!.text = ante;
        }
        if Starting_Money!.text.isEmpty{
            Starting_Money!.text = startMoney;
        }
    }
    
    /*@IBAction func onSaveClick(sender: AnyObject) {
        namePreferenceField!.resignFirstResponder();
        
        NSUserDefaults.standardUserDefaults().setValue(namePreferenceField!.text, forKey:SettingsKeys.namePreferenceKey)
        NSUserDefaults.standardUserDefaults().synchronize()
    }*/
    
    // MARK: Action Methods
    
    /*@IBAction func onRefreshClick(sender: AnyObject) {
    loadSettings()
    }*/
}
