//
//  register_tutor.swift
//  THS
//
//  Created by Samuel Ford on 6/20/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class register_tutor: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var grade: UITextField!
    @IBOutlet weak var courses: UITextField!
    @IBOutlet weak var teach: UITextField!
    var array = [String]()
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
ref=Database.database().reference()
       
    }
    @IBAction func submit_tutor(_ sender: Any) {
        let name1 = name.text!
        let grade1 = grade.text!
        let courses1 = courses.text!
        let teach1 = teach.text!
        let application = ("Name: \(String(describing: name1)), Grade: \(String(describing: grade1)), Courses: \(String(describing: courses1)), Tutor: \(String(describing: teach1))")
        ref?.child("Tutor_sign_up").childByAutoId().setValue(application)
        let ac = UIAlertController(title: "Thank you for signing up!", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
            
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
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
