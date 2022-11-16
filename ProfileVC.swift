//
//  ProfileVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 8/21/22.
//

import UIKit

class ProfileVC: UIViewController {
    @IBOutlet weak var PT: UIButton!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = UserDefaults.standard.string(forKey: "Fullname")
        email.text = UserDefaults.standard.string(forKey: "Email")
    }
    

    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey:"Enter")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "signIn")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    @IBAction func schedule(_ sender: Any) {
        if UserDefaults.standard.bool(forKey:"schedule") == true{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "classr")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        }
        else if UserDefaults.standard.bool(forKey:"schedule") == false{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "quiz")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        }
    }
    @IBAction func home(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "home")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
   

}
