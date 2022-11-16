//
//  periodsVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 8/1/22.
//

import UIKit

class periodsVC: UIViewController {
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var p1: UIStackView!
    @IBOutlet weak var p1subject: UITextField!
    @IBOutlet weak var p1teacher: UITextField!
    
    @IBOutlet weak var p2: UIStackView!
    @IBOutlet weak var p2subject: UITextField!
    @IBOutlet weak var p2teacher: UITextField!
    
    @IBOutlet weak var p3: UIStackView!
    @IBOutlet weak var p3subject: UITextField!
    @IBOutlet weak var p3teacher: UITextField!
    
    @IBOutlet weak var p4: UIStackView!
    @IBOutlet weak var p4subject: UITextField!
    @IBOutlet weak var p4teacher: UITextField!
    
    @IBOutlet weak var p5: UIStackView!
    @IBOutlet weak var p5subject: UITextField!
    @IBOutlet weak var p5teacher: UITextField!
    
    @IBOutlet weak var p6: UIStackView!
    @IBOutlet weak var p6subject: UITextField!
    @IBOutlet weak var p6teacher: UITextField!
        
    @IBOutlet weak var p7: UIStackView!
    @IBOutlet weak var p7subject: UITextField!
    @IBOutlet weak var p7teacher: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = "Please input subject and teacher name \n as shown in Infinte Campus "
        label.text = " Subject: AP Comp Sci Principles (HP) \n Teacher: Brown, Adam"
        
        p1subject.text = userDefaults.string(forKey: "period1S")
        p1teacher.text = userDefaults.string(forKey: "period1T")
        p2subject.text = userDefaults.string(forKey: "period2S")
        p2teacher.text = userDefaults.string(forKey: "period2T")
        p3subject.text = userDefaults.string(forKey: "period3S")
        p3teacher.text = userDefaults.string(forKey: "period3T")
        p4subject.text = userDefaults.string(forKey: "period4S")
        p4teacher.text = userDefaults.string(forKey: "period4T")
        p5subject.text = userDefaults.string(forKey: "period5S")
        p5teacher.text = userDefaults.string(forKey: "period5T")
        p6subject.text = userDefaults.string(forKey: "period6S")
        p6teacher.text = userDefaults.string(forKey: "period6T")
        p7subject.text = userDefaults.string(forKey: "period7S")
        p7teacher.text = userDefaults.string(forKey: "period7T")
        p1subject.isUserInteractionEnabled = true
        p2subject.isUserInteractionEnabled = true
        p3subject.isUserInteractionEnabled = true
        p4subject.isUserInteractionEnabled = true
        p5subject.isUserInteractionEnabled = true
        p6subject.isUserInteractionEnabled = true
        p7subject.isUserInteractionEnabled = true
        if UserDefaults.standard.integer(forKey: "period") == 1{
            p1subject.text = "gael"
            p1teacher.text = "gael"
            p1subject.isUserInteractionEnabled = false
            p1teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 2{
            p2subject.text = "gael"
            p2teacher.text = "gael"
            p2subject.isUserInteractionEnabled = false
            p2teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 3{
            p3subject.text = "gael"
            p3teacher.text = "gael"
            p3subject.isUserInteractionEnabled = false
            p3teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 4{
            p4subject.text = "gael"
            p4teacher.text = "gael"
            p4subject.isUserInteractionEnabled = false
            p4teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 5{
            p5subject.text = "gael"
            p5teacher.text = "gael"
            p5subject.isUserInteractionEnabled = false
            p5teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 6{
            p6subject.text = "gael"
            p6teacher.text = "gael"
            p6subject.isUserInteractionEnabled = false
            p6teacher.isUserInteractionEnabled = false
        }
        else if UserDefaults.standard.integer(forKey: "period") == 7{
            p7subject.text = "gael"
            p7teacher.text = "gael"
            p7subject.isUserInteractionEnabled = false
            p7teacher.isUserInteractionEnabled = false
        }else{
            if userDefaults.string(forKey: "period1S") == "gael"{
                p1subject.text = ""
                p1teacher.text = ""
            }
            else if userDefaults.string(forKey: "period2S") == "gael"{
                p2subject.text = ""
                p2teacher.text = ""
            }
            else if userDefaults.string(forKey: "period3S") == "gael"{
                p3subject.text = ""
                p3teacher.text = ""
            }
            else if userDefaults.string(forKey: "period4S") == "gael"{
                p4subject.text = ""
                p4teacher.text = ""
            }
            else if userDefaults.string(forKey: "period5S") == "gael"{
                p5subject.text = ""
                p5teacher.text = ""
            }
            else if userDefaults.string(forKey: "period6S") == "gael"{
                p6subject.text = ""
                p6teacher.text = ""
            }
            else if userDefaults.string(forKey: "period7S") == "gael"{
                p7subject.text = ""
                p7teacher.text = ""
            }
        }

    }
    
    @IBAction func home(_ sender: Any) {
        UserDefaults.standard.set(true, forKey:"schedule")
        UserDefaults.standard.set(p1subject.text, forKey: "period1S")
        UserDefaults.standard.set(p1teacher.text, forKey: "period1T")
        UserDefaults.standard.set(p2subject.text, forKey: "period2S")
        UserDefaults.standard.set(p2teacher.text, forKey: "period2T")
        UserDefaults.standard.set(p3subject.text, forKey: "period3S")
        UserDefaults.standard.set(p3teacher.text, forKey: "period3T")
        UserDefaults.standard.set(p4subject.text, forKey: "period4S")
        UserDefaults.standard.set(p4teacher.text, forKey: "period4T")
        UserDefaults.standard.set(p5subject.text, forKey: "period5S")
        UserDefaults.standard.set(p5teacher.text, forKey: "period5T")
        UserDefaults.standard.set(p6subject.text, forKey: "period6S")
        UserDefaults.standard.set(p6teacher.text, forKey: "period6T")
        UserDefaults.standard.set(p7subject.text, forKey: "period7S")
        UserDefaults.standard.set(p7teacher.text, forKey: "period7T")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "home")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func resetschedule(_ sender: Any) {
        UserDefaults.standard.set(true, forKey:"schedule")
        UserDefaults.standard.set("", forKey: "period1S")
        UserDefaults.standard.set("", forKey: "period1T")
        UserDefaults.standard.set("", forKey: "period2S")
        UserDefaults.standard.set("", forKey: "period2T")
        UserDefaults.standard.set("", forKey: "period3S")
        UserDefaults.standard.set("", forKey: "period3T")
        UserDefaults.standard.set("", forKey: "period4S")
        UserDefaults.standard.set("", forKey: "period4T")
        UserDefaults.standard.set("", forKey: "period5S")
        UserDefaults.standard.set("", forKey: "period5T")
        UserDefaults.standard.set("", forKey: "period6S")
        UserDefaults.standard.set("", forKey: "period6T")
        UserDefaults.standard.set("", forKey: "period7S")
        UserDefaults.standard.set("", forKey: "period7T")
        UserDefaults.standard.set(false, forKey:"schedule")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "quiz")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)

    }
    
    
}
