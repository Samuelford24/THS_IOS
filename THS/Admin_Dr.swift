//
//  Admin_Dr.swift
//  THS
//
//  Created by Samuel Ford on 6/19/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Admin_Dr: UIViewController {
    @IBOutlet weak var Dr_text: UITextField!
    var ref : DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    @IBAction func back_dr(_ sender: Any) {
         self.performSegue(withIdentifier: "seque_dr", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func send_dr(_ sender: Any) {
    
    let DR = Dr_text.text
    ref?.child("Dr_rowshandel").childByAutoId().setValue(DR)
    NSLog("Uploading...")
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
