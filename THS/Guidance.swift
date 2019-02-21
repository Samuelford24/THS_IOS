//
//  Guidance.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Guidance: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
let counselors = ["Ms.Jones (A-Ca)", "Mrs.Alsman (Cb-F)","Mrs.Trench (G-Ke)", "Mrs.Compton (Kf-N)", "Mrs.Tracy (O-SI)","Mr.Waugh (Sm-z)","Mr.Burks (College Connections Coach)", "Mrs.Callahan (JAG)"]
    @IBOutlet weak var tableview_guidance: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return counselors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_guidance.dequeueReusableCell(withIdentifier: "guidance_cell")! as UITableViewCell
        cell.textLabel?.text = counselors[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ac = UIAlertController(title: "Sign up to see  \(counselors[indexPath.row])?", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let OKaction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { action in
            if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSePsqIw9Rz0kNAt-89dTBVmx93MP0xMPt7Xcbw-DwWJ1-0KSA/viewform") {
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

      
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
}
}
