//
//  SigninVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 7/30/22.
//

import UIKit

class SigninVC: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signin: UIButton!
    
    let app_Delegate = AppDelegate()
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey:"Enter") == true{
            email.text = userDefaults.string(forKey: "Fullname")
            password.text = userDefaults.string(forKey: "Password")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "home")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: false)
            
        }
    }
    @IBAction func loginTapped(_ sender: Any) {
        if email.text?.isEmpty == true || password.text?.isEmpty == true{
            let alertController = UIAlertController(title: "Alert", message: "Please enter Name and password", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
            }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
            
        }
        else{
            if email.text == userDefaults.string(forKey: "Fullname") && password.text == userDefaults.string(forKey: "Password"){
                UserDefaults.standard.set(true, forKey:"Enter")
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "home")
                vc.modalPresentationStyle = .overFullScreen
                present(vc, animated: true)
            }
            else{
                let alertController = UIAlertController(title: "Alert", message: "Email & Password is wrong", preferredStyle: .alert)
                let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                }
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
            }
    
        }
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "signup")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
}
