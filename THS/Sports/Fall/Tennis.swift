//
//  Tennis.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Tennis: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    @IBOutlet weak var tableview_tennis: UITableView!
    
    
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
        handle = ref?.child("Boys_tennis").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_tennis.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_tennis.contentSize.height - self.tableview_tennis.frame.size.height)
                self.tableview_tennis.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_tennis.dequeueReusableCell(withIdentifier: "tennis_cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func bacl_tennis(_ sender: Any) {
         self.performSegue(withIdentifier: "seque_tennis", sender: nil)
    }
}
*/

