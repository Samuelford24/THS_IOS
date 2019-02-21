//
//  Forms.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Forms: UIViewController {

    
    @IBAction func Physical_form(_ sender: Any) {
        let ac = UIAlertController(title: "Go to Physical Form?", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let OKaction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { action in
            if let url = URL(string: "https://s3-us-west-2.amazonaws.com/sportshub2-uploads-prod/files/sites/966/2018/05/15183822/18-19-Physical.pdf") {
                UIApplication.shared.open(url, options: [:])
            }
        })
        let NOaction = UIAlertAction(title:"No", style: UIAlertActionStyle.default, handler:{ action in
            self.dismiss(animated: true, completion: nil)               })
        
        
        
        ac.addAction(OKaction)
        ac.addAction(NOaction)
        present(ac, animated: true, completion: nil)
        
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
