//
//  Boy's Soccer.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Boy_s_Soccer: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var array = [String]()
    @IBOutlet weak var tableview_bsoccer: UITableView!
  
    var ref : DatabaseReference!
    var handle: DatabaseHandle!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
        handle = ref?.child("Boys_soccer").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_bsoccer.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_bsoccer.contentSize.height - self.tableview_bsoccer.frame.size.height)
                self.tableview_bsoccer.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    @IBAction func back_bsoccer(_ sender: Any) {
            self.performSegue(withIdentifier: "seque_bsoccer", sender: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_bsoccer.dequeueReusableCell(withIdentifier: "bsoccer_cell")! as UITableViewCell
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

