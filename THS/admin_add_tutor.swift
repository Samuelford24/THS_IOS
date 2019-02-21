//
//  admin_add_tutor.swift
//  THS
//
//  Created by Samuel Ford on 6/21/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class admin_add_tutor: UIViewController {
    @IBOutlet weak var tutor_text: UITextField!
    
    var ref : DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    @IBAction func add_tutor(_ sender: Any) {
        let tutor = tutor_text.text
        ref?.child("View_tutors").childByAutoId().setValue(tutor)
        NSLog("Uploading...")
    }
    @IBAction func back_add_tutor(_ sender: Any) {
        self.performSegue(withIdentifier: "seque_add_tutor", sender: nil)
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
