//
//  Girl's Soccer.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Girl_s_Soccer: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    @IBOutlet weak var tableview_gsoccer: UITableView!
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        handle = ref?.child("Girls_soccer").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_gsoccer.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_gsoccer.contentSize.height - self.tableview_gsoccer.frame.size.height)
                self.tableview_gsoccer.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_gsoccer.dequeueReusableCell(withIdentifier: "gsoccer_cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back_gsoccer(_ sender: Any) {
         self.performSegue(withIdentifier: "seque_gsoccer", sender: nil)
    }
}
*/

