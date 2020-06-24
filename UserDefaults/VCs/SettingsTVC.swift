//
//  SettingsTVC.swift
//  UserDefaults
//
//  Created by Yaz Burrell on 6/24/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class SettingsTVC: UITableViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var likesDevelopmentSwitch: UISwitch!
    @IBOutlet weak var coolMeterValueLabel: UILabel!
    @IBOutlet weak var coolMeterSlider: UISlider!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
    }
    
 
    @IBAction func didSelectSave(_ sender: UIButton) {
    }
    
}
