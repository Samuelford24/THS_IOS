//
//  Forms.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Forms: UIViewController {

    
    @IBAction func Physical_form(_ sender: Any) {
        let ac = UIAlertController(title: "Go to Physical Form?", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in
            if let url = URL(string: "http://metadot.vigoschools.org/public/19-20%20Physical.pdf") {
                UIApplication.shared.open(url, options: [:])
            }
        })
        let NOaction = UIAlertAction(title:"No", style: UIAlertAction.Style.default, handler:{ action in
            self.dismiss(animated: true, completion: nil)               })
        
        
        
        ac.addAction(OKaction)
        ac.addAction(NOaction)
        present(ac, animated: true, completion: nil)
        
    }
   /* @IBAction func clubs(_ sender: Any) {
        Database.database().reference().child("Clubs").observe(.childAdded, with: { (snapshot) in
            print(snapshot)
             let dictionary = snapshot.value as? String
            print(dictionary!)
                if (dictionary == "clubs"){
                    let ac = UIAlertController(title: "Clubs", message: "Would you like to sign up for clubs?", preferredStyle: UIAlertController.Style.alert)
                    let OKaction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in
                        if let url = URL(string: "") {
                            UIApplication.shared.open(url, options: [:])
                        }
                    })
                    let NOaction = UIAlertAction(title:"No", style: UIAlertAction.Style.default, handler:{ action in
                        self.dismiss(animated: true, completion: nil)               })
                    
                    
                    
                    ac.addAction(OKaction)
                    ac.addAction(NOaction)
                    self.present(ac, animated: true, completion: nil)

                    
                }
                else if(dictionary == "noclubs"){
                    let ac = UIAlertController(title: "Clubs", message:
                        "You can not sign up for clubs at this time", preferredStyle: UIAlertController.Style.alert)
                    let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
                           self.dismiss(animated: true, completion: nil)
                    })
                  
                    
                    
                    
                    ac.addAction(OKaction)
                    self.present(ac, animated: true, completion: nil)
                    
                    
                    
                }
    
        })
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
