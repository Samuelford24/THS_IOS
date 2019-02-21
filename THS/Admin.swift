//
//  Admin.swift
//  THS
//
//  Created by Samuel Ford on 6/13/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Admin: UIViewController {
    var password5 = "1234"
    @IBOutlet weak var passwordentered: UITextField!
    
    @IBAction func enterpass(_ sender: Any) {
        if passwordentered.text == password5 {performSegue(withIdentifier: "seque_admin", sender: nil)
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
