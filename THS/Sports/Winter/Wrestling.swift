//
//  Wrestling.swift
//  THS
//
//  Created by Samuel Ford on 10/15/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Wrestling: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    
    @IBOutlet weak var tableview_wrestling: UITableView!
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        handle = ref?.child("Wrestling").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_wrestling.reloadData()
                //let bottomOffset = CGPoint(x: 0, y: self.tableview_wrestling
                    //.contentSize.height - self.tableview_wrestling.frame.size.height)
               // self.tableview_wrestling.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_wrestling.dequeueReusableCell(withIdentifier: "cell_wrestling")! as UITableViewCell
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
