//
//  VolleyBall.swift
//  THS
//
//  Created by Samuel Ford on 8/13/19.
//  Copyright © 2019 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class VolleyBall: UITableViewController {

    var array = [String]()
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        handle = ref?.child("Boys_swimming").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableView.reloadData()
                // let bottomOffset = CGPoint(x: 0, y: self.tableview_gball.contentSize.height - self.tableview_gball.frame.size.height)
                // self.tableview_gball.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell_volleyball")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
}
}
