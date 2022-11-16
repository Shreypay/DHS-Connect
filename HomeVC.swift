//
//  HomeVC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 7/30/22.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var class_code: UILabel!
    let app_Delegate = AppDelegate()
    let userDefaults = UserDefaults.standard
    @IBOutlet weak var headerview: UIView!
    var count = 1
    @IBOutlet weak var Welcome: UILabel!
    
    @IBOutlet weak var period7classcode: UIButton!
    @IBOutlet weak var period6classcode: UIButton!
    @IBOutlet weak var period5classcode: UIButton!
    @IBOutlet weak var period4classcode: UIButton!
    @IBOutlet weak var period3classcode: UIButton!
    @IBOutlet weak var period2classcode: UIButton!
    @IBOutlet weak var period1classcode: UIButton!
    
    @IBOutlet weak var dropdown: UIButton!
    @IBOutlet weak var joinclass: UIButton!
    @IBOutlet var logout: UIView!
    
    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey:"Enter")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "profile")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    @IBAction func profile(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "profile")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        headerview.layer.cornerRadius = 40
        let welcomename = userDefaults.string(forKey: "Fullname")
        Welcome.text = "Welcome, " + welcomename!
        Welcome.font = UIFont.systemFont(ofSize: 20.0)
        Welcome.font = UIFont.boldSystemFont(ofSize: 20.0)
        Welcome.font = UIFont.italicSystemFont(ofSize: 20.0)
       
        if userDefaults.string(forKey: "period1S") != "" || userDefaults.string(forKey: "period1T") != ""{
            period1classcode.isHidden = false
            let period1S = userDefaults.string(forKey: "period1S")
            let period1T = userDefaults.string(forKey: "period1T")
            let period1 = "Period 1: "+period1S!+" - "+period1T!
            period1classcode.setTitle(period1, for: .normal)
        }
        else{
            period1classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period2S") != "" || userDefaults.string(forKey: "period2T") != ""{
            period2classcode.isHidden = false
            let period2S = userDefaults.string(forKey: "period2S")
            let period2T = userDefaults.string(forKey: "period2T")
            let period2 = "Period 2: "+period2S!+" - "+period2T!
            period2classcode.setTitle(period2, for: .normal)
        }
        else{
            period2classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period3S") != "" || userDefaults.string(forKey: "period3T") != ""{
            period3classcode.isHidden = false
            let period3S = userDefaults.string(forKey: "period3S")
            let period3T = userDefaults.string(forKey: "period3T")
            let period3 = "Period 3: "+period3S!+" - "+period3T!
            period3classcode.setTitle(period3, for: .normal)
        }
        else{
            period3classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period4S") != "" || userDefaults.string(forKey: "period4T") != ""{
            period4classcode.isHidden = false
            let period4S = userDefaults.string(forKey: "period4S")
            let period4T = userDefaults.string(forKey: "period4T")
            let period4 = "Period 4: "+period4S!+" - "+period4T!
            period4classcode.setTitle(period4, for: .normal)
        }
        else{
            period4classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period5S") != "" || userDefaults.string(forKey: "period5T") != ""{
            period5classcode.isHidden = false
            let period5S = userDefaults.string(forKey: "period5S")
            let period5T = userDefaults.string(forKey: "period5T")
            let period5 = "Period 5: "+period5S!+" - "+period5T!
            period5classcode.setTitle(period5, for: .normal)
        }
        else{
            period5classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period6S") != "" || userDefaults.string(forKey: "period6T") != ""{
            period6classcode.isHidden = false
            let period6S = userDefaults.string(forKey: "period6S")
            let period6T = userDefaults.string(forKey: "period6T")
            let period6 = "Period 6: "+period6S!+" - "+period6T!
            period6classcode.setTitle(period6, for: .normal)
        }
        else{
            period6classcode.isHidden = true
        }
        
        if userDefaults.string(forKey: "period7S") != "" || userDefaults.string(forKey: "period7T") != ""{
            period7classcode.isHidden = false
            let period7S = userDefaults.string(forKey: "period7S")
            let period7T = userDefaults.string(forKey: "period7T")
            let period7 = "Period 7: "+period7S!+" - "+period7T!
            period7classcode.setTitle(period7, for: .normal)
        }
        else{
            period7classcode.isHidden = true
        }
        
        

        

    }
    
    @IBAction func gotoperiod1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "period1")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func JoinClasses(_ sender: Any) {
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
    
  
    @IBAction func Dropdown(_ sender: Any) {
        if count == 1{
            joinclass.isHidden = false
            logout.isHidden = false
            count = 2
            
        }else if count == 2{
            joinclass.isHidden = true
            logout.isHidden = true
            count = 1

        }
        
    }
    
}
