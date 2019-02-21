//
//  Volley Ball.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//
/*
import UIKit
import Firebase

class Volley_Ball: UIViewController,UITableViewDataSource, UITableViewDelegate {
   
    var array = [String]()
    @IBOutlet weak var tableview_volleyball: UITableView!
   
    
    var ref : DatabaseReference!
    var handle: DatabaseHandle!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        handle = ref?.child("Girls_volleyball").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array.append(item)
                self.tableview_volleyball.reloadData()
                let bottomOffset = CGPoint(x: 0, y: self.tableview_volleyball.contentSize.height - self.tableview_volleyball.frame.size.height)
                self.tableview_volleyball.setContentOffset(bottomOffset, animated: false)
            }
            
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview_volleyball.dequeueReusableCell(withIdentifier: "volleyball_cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back_volleyball(_ sender: Any) {
         self.performSegue(withIdentifier: "seque_volleyball", sender: nil)
    }
}

*/
