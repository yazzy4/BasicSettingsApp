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
        loadSettings()
       
    }

    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
        
//        let wholeNumber = Int(sender.value)
        coolMeterValueLabel.text = String(Int(sender.value))
    }
    
    func loadSettings(){
        
        guard let settingsDictionary = UserDefaults.standard.dictionary(forKey: "settings") else { return }
//        let firstName = UserDefaults.standard.string(forKey: "firstName")
//        print(firstName ?? "no first name")
    }
    
    func saveSettings(){
        
        let settingsDictionary: [String:Any?] = ["firstName":firstNameTextField.text,
             "lastName": lastNameTextField.text,
             "likesDevelopment": likesDevelopmentSwitch.isOn,
             "coolMeterValue": Int(coolMeterSlider.value)
             ]
          
        UserDefaults.standard.set(settingsDictionary, forKey: "settings")
        
//        UserDefaults.standard.set(firstNameTextField.text, forKey: "firstName")
    }
    
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard indexPath.section == 2 else { return }
       
        print("save")
        saveSettings()
    }
    
}
