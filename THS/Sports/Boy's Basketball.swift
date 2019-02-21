//
//  Boy's Basketball.swift
//  THS
//
//  Created by Samuel Ford on 10/15/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Boy_s_Basketball: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    
    @IBOutlet weak var tableview_bball: UITableView!
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        handle = ref?.child("Boys_bball").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_bball.reloadData()
                //let bottomOffset = CGPoint(x: 0, y: self.tableview_bball.contentSize.height - self.tableview_bball.frame.size.height)
               // self.tableview_bball.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_bball.dequeueReusableCell(withIdentifier: "cell_BBall")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
