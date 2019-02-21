//
//  Golf.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Golf: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview_golf: UITableView!
    
    var array = [String]()
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        handle = ref?.child("Girls_golf").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_golf.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_golf.contentSize.height - self.tableview_golf.frame.size.height)
                self.tableview_golf.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_golf.dequeueReusableCell(withIdentifier: "golf_cell")! as UITableViewCell
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

