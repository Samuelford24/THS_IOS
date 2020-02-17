//
//  Softball.swift
//  THS
//
//  Created by Samuel Ford on 3/4/19.
//  Copyright © 2019 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Softball:  UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    
    @IBOutlet weak var tableview_softball: UITableView!
    
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        handle = ref?.child("Girls_bball").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_softball.reloadData()
                // let bottomOffset = CGPoint(x: 0, y: self.tableview_gball.contentSize.height - self.tableview_gball.frame.size.height)
                // self.tableview_gball.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_softball.dequeueReusableCell(withIdentifier: "cell_softball")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
