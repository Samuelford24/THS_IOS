//
//  Boy's CC.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Boy_s_CC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    @IBOutlet weak var tableview_boyscc: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        handle = ref?.child("Boys_cross-country").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_boyscc.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_boyscc.contentSize.height - self.tableview_boyscc.frame.size.height)
                self.tableview_boyscc.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_boyscc.dequeueReusableCell(withIdentifier: "bcc_cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
*/

