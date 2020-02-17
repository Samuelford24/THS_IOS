//
//  Settings.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    
    @IBAction func questions(_ sender: Any) {
         let ac = UIAlertController(title: "Email us at svhsdev@vigoschools.org", message: nil, preferredStyle: UIAlertController.Style.alert)
         let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
             self.dismiss(animated: true, completion: nil)
    
    })
    ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func feedback(_ sender: Any) {
        if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSfDRCQgIzQLFza1wOq6wW8OEAuaXvbsXI8sicGPlMGzfHwQlA/viewform?usp=sf_link") {
            UIApplication.shared.open(url, options: [:])

    }
    }
    @IBAction func experience(_ sender: Any) {
        let ac = UIAlertController(title: "Email us at svhsdev@vigoschools.org", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
            
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func privacy_policy(_ sender: Any) {
        if let url = URL(string: "https://goo.gl/forms/nLZbWvrgTGHc6lWJ3") {
            UIApplication.shared.open(url, options: [:])
            
        }
    }
    
    
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

