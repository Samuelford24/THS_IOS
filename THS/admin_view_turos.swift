//
//  admin_view_turos.swift
//  THS
//
//  Created by Samuel Ford on 6/21/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class admin_view_turos: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    @IBOutlet weak var tableview_admin_view_tutors: UITableView!
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        handle = ref?.child("Tutor_sign_up").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_admin_view_tutors.reloadData()
            }
            
        })
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_admin_view_tutors.dequeueReusableCell(withIdentifier: "cell_adminvt")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
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
