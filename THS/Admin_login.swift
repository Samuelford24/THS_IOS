//
//  Admin_login.swift
//  THS
//
//  Created by Samuel Ford on 6/16/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Admin_login: UIViewController {
   
  
    
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
             Firestore.firestore().collection("Admin").document("Password").getDocument()
          { document, error in
        
              guard let snapshot = document else {
                  print("Error retreiving snapshots \(error!)")
                  return
              }
              
              let v = document?.get("password") as? String
              
              if(self.PasswordText.text == v){
                let main = UIStoryboard(name:"Main", bundle: nil)
                       let gotoAdmin = main.instantiateViewController(withIdentifier: "AdminVC")
                        self.present(gotoAdmin, animated: true, completion: nil)
              }
              else{
                  let ac = UIAlertController(title: "Wrong Password", message:nil, preferredStyle: UIAlertController.Style.alert)
                        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
                            ac.dismiss(animated: true, completion: nil)               })
                        
                        
                        
                        ac.addAction(OKaction)
                  self.present(ac, animated: true, completion: nil)
              }
        
            
  
            
        }
    
}
 
}

