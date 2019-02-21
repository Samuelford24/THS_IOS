//
//  Admin_layout.swift
//  THS
//
//  Created by Samuel Ford on 6/16/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit

class Admin_layout: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func bakc_adminlayout(_ sender: Any) {
         self.performSegue(withIdentifier: "sequea1", sender: nil)
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
