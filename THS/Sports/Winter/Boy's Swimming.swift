//
//  Boy's Swimming.swift
//  THS
//
//  Created by Samuel Ford on 10/15/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Boy_s_Swimming: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    
    @IBOutlet weak var tableview_bswimming: UITableView!
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        handle = ref?.child("Boys_swimming").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_bswimming.reloadData()
               // let bottomOffset = CGPoint(x: 0, y: self.tableview_bswimming.contentSize.height - self.tableview_bswimming.frame.size.height)
              //  self.tableview_bswimming.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_bswimming.dequeueReusableCell(withIdentifier: "cell_bswimming")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

