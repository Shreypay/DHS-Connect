//
//  SignupVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 7/30/22.
//

import UIKit

class SignupVC: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var checkPassword: UITextField!
    
    let app_Delegate = AppDelegate()
    let userDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func gotosignin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "signIn")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func signupbtn(_ sender: Any) {
        if username.text?.isEmpty == true || email.text?.isEmpty == true || password.text?.isEmpty == true || checkPassword.text?.isEmpty == true{
            
            let alertController = UIAlertController(title: "Alert", message: "Please enter all details", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
            }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
            
        }
        else{
            if password.text == checkPassword.text{
                userDefaults.set(username.text, forKey: "Fullname")
                userDefaults.set(email.text, forKey: "Email")
                userDefaults.set(password.text, forKey: "Password")
                userDefaults.set(checkPassword.text, forKey: "ConfirmPassword")
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "home")
                vc.modalPresentationStyle = .overFullScreen
                present(vc, animated: true)
                
                UserDefaults.standard.set(true, forKey: "Enter")

            }
            else{
                let alertController = UIAlertController(title: "Alert", message: "Password does not match Confirm Passowrd", preferredStyle: .alert)
                let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                }
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
            }

           

        }
    }
}

