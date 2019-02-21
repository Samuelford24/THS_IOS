//
//  Admin_login.swift
//  THS
//
//  Created by Samuel Ford on 6/16/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Admin_login: UIViewController {
   
    @IBOutlet weak var EmailAddressText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
      /*func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject) -> Bool {
        
        if identifier == "to_admin" { // you define it in the storyboard (click on the segue, then Attributes' inspector > Identifier
            
            if((EmailAddressText.text?.contains("admin"))! && (PasswordText.text?.contains("123"))!)
            {
                
                print("Hello")
                return true
            }
            else {
                print("*** no, segue will occur")
            }
        }
        
        // by default, transition
        return false
    }
**/
   
    @IBAction func Login(_ sender: Any) {
    
    if((EmailAddressText.text?.contains("Admin"))! && (PasswordText.text?.contains("T_H_S1"))!)
        {
            
            NSLog("Login Successfully...")
            let main = UIStoryboard(name:"Main", bundle: nil)
           let gotoAdmin = main.instantiateViewController(withIdentifier: "AdminVC")
            self.present(gotoAdmin, animated: true, completion: nil)
            
    }
            else {
                let ac = UIAlertController(title: "Login Failed!!", message: nil, preferredStyle: UIAlertControllerStyle.alert)
                let OKaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { action in
                    self.dismiss(animated: true, completion: nil)
                    
                })
                ac.addAction(OKaction)
                present(ac, animated: true, completion: nil)
            }
            
        }
    
}
 


