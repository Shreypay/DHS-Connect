//
//  Period1VC.swift
//  DHS Connect Storyboard
//
//  Created by Shrey Valia on 8/9/22.
//

import UIKit

class Period1VC: UIViewController {
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var header: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let period1S = userDefaults.string(forKey: "period1S")
        let period1T = userDefaults.string(forKey: "period1T")
        let period1 = "Period 1: "+period1S!+" - "+period1T!
        header.text = period1
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func gotohomepage(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "home")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
}
