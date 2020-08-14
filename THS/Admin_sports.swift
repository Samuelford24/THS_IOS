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

    @IBOutlet weak var sportsText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func send_football(_ sender: Any) {
     uploadsport(sportReferencs: "Girls_Tennis");
    }
        
    @IBAction func send_golf(_ sender: Any) {
       uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_bsoccer(_ sender: Any) {
      uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_gsoccer(_ sender: Any) {
     uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_bcc(_ sender: Any) {
     uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_gcc(_ sender: Any) {
      uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_vb(_ sender: Any) {
      uploadsport(sportReferencs: "Girls_Tennis");
    }
    @IBAction func send_tennis(_ sender: Any) {
        uploadsport(sportReferencs: "Girls_Tennis");
}
    func uploadsport(sportReferencs:String) -> Void {
        Firestore.firestore().collection(sportReferencs).addDocument(data: ["game":sportsText.text]) {  err  in
                   
                    if let err = err {
                         let ac = UIAlertController(title: "Upload Error", message:"Please try again", preferredStyle: UIAlertController.Style.alert)
                              let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
                                  ac.dismiss(animated: true, completion: nil)               })
                              
                              
                              
                              ac.addAction(OKaction)
                        self.present(ac, animated: true, completion: nil)
                    } else {
                          let ac = UIAlertController(title: "Successfully added", message:nil, preferredStyle: UIAlertController.Style.alert)
                              let OKaction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
                                  ac.dismiss(animated: true, completion: nil)               })
                              
                              
                              
                              ac.addAction(OKaction)
                        self.present(ac, animated: true, completion: nil)
                    }
                   }
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
