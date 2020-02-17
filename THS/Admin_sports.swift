//
//  Admin_sports.swift
//  THS
//
//  Created by Samuel Ford on 6/19/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Admin_sports: UIViewController {
 var ref : DatabaseReference!
    @IBOutlet weak var sports_text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func send_football(_ sender: Any) {
        let football = sports_text.text
        ref?.child("Football").childByAutoId().setValue(football)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        
    })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
        
    @IBAction func send_golf(_ sender: Any) {
        let golf = sports_text.text
        ref?.child("Girls_golf").childByAutoId().setValue(golf)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_bsoccer(_ sender: Any) {
        let bs = sports_text.text
        ref?.child("Boys_soccer").childByAutoId().setValue(bs)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_gsoccer(_ sender: Any) {
        let gs = sports_text.text
        ref?.child("Girls_soccer").childByAutoId().setValue(gs)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_bcc(_ sender: Any) {
        let bcc = sports_text.text
        ref?.child("Boys_cross-country").childByAutoId().setValue(bcc)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_gcc(_ sender: Any) {
        let gcc = sports_text.text
        ref?.child("Girls_cross-country").childByAutoId().setValue(gcc)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_vb(_ sender: Any) {
        let volleyball = sports_text.text
        ref?.child("Girls_volleyball").childByAutoId().setValue(volleyball)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        
        })
        ac.addAction(OKaction)
        present(ac, animated: true, completion: nil)
    }
    @IBAction func send_tennis(_ sender: Any) {
        let tennis = sports_text.text
        ref?.child("Boys_tennis").childByAutoId().setValue(tennis)
        let ac = UIAlertController(title: "Succesfully uploaded", message: nil, preferredStyle: UIAlertController.Style.alert)
        let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
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
