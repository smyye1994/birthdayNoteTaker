//
//  ViewController.swift
//  birthdayNoteTaker
//
//  Created by Sümeyye Kılıçoğlu on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextFİeld: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
   //Casting as? vs. as!
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName) "
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
        
        
    }

    @IBAction func SaveClicked(_ sender: Any) {
        
        
        UserDefaults.standard.set(nameTextFİeld.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
    //  UserDefaults.standars.synchronize()
        
        nameLabel.text = "Name: \(nameTextFİeld.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
        
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if  (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
}
}
      
    

