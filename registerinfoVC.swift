//
//  registerinfoVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 8/1/22.
//

import UIKit

class registerinfoVC: UIViewController {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var s1: UISwitch!
    @IBOutlet weak var s7: UISwitch!
    @IBOutlet weak var s6: UISwitch!
    @IBOutlet weak var s5: UISwitch!
    @IBOutlet weak var s4: UISwitch!
    @IBOutlet weak var s3: UISwitch!
    @IBOutlet weak var s2: UISwitch!
    @IBOutlet weak var q1: UILabel!
    @IBOutlet weak var q2: UILabel!
    @IBOutlet weak var q3: UILabel!
    @IBOutlet weak var q4: UILabel!
    @IBOutlet weak var q5: UILabel!
    @IBOutlet weak var q6: UILabel!
    @IBOutlet weak var q7: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(true, forKey: "EnterReg")
        UserDefaults.standard.set(0, forKey: "period")


        // Do any additional setup after loading the view.
    }
    @IBAction func btnclicks1(_ sender: Any) {
        if question.text == "Are you a freshman"{
            switchscreen()
        }
        else{
            UserDefaults.standard.set(1, forKey: "period")
            switchscreen()

        }
    }
    @IBAction func btnclickss2(_ sender: Any) {
        if question.text == "Are you a freshman"{
            question.text = "What period Gael do you have"
            q1.text = "1"
            q2.text = "2"
            q3.isHidden = false
            q4.isHidden = false
            q5.isHidden = false
            q6.isHidden = false
            q7.isHidden = false
            s1.isHidden = false
            s2.setOn(false, animated: false)
            s2.isHidden = false
            s3.isHidden = false
            s4.isHidden = false
            s5.isHidden = false
            s6.isHidden = false
            s7.isHidden = false


            
        }else{
            UserDefaults.standard.set(2, forKey: "period")
            switchscreen()
            
        }
    }
    
    @IBAction func btnclicks3(_ sender: Any) {
        UserDefaults.standard.set(3, forKey: "period")
        switchscreen()
    }
    
    @IBAction func btnclicks4(_ sender: Any) {
        UserDefaults.standard.set(4, forKey: "period")
        switchscreen()
    }
    
    @IBAction func btnclicks5(_ sender: Any) {
        UserDefaults.standard.set(5, forKey: "period")
        switchscreen()
    }
    
    @IBAction func btnclicks6(_ sender: Any) {
        UserDefaults.standard.set(6, forKey: "period")
        switchscreen()
    }
    
    @IBAction func btnclicks7(_ sender: Any) {
        UserDefaults.standard.set(7, forKey: "period")
        switchscreen()
    }
    
    func switchscreen(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "classr")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: false)
    
    }
    
    @IBAction func profile(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "profile")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)

    }
    @IBAction func home(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "home")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)

    }
}
