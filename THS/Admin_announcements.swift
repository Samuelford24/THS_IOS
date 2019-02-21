//
//  Admin_announcements.swift
//  THS
//
//  Created by Samuel Ford on 6/19/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Admin_announcements: UIViewController {

    @IBOutlet weak var announcement_text: UITextField!
    var ref : DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func send_announcements(_ sender: Any) {
        let announce = announcement_text.text
        ref?.child("Announcements").childByAutoId().setValue(announce)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
            
            })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
}
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


