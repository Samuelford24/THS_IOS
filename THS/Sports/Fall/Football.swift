//
//  Football.swift
//  THS
//
//  Created by Samuel Ford on 8/13/19.
//  Copyright © 2019 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase
class Football: UITableViewController {

    var array = [String]()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
         Firestore.firestore().collection("Football").addSnapshotListener(){ querySnapshot, error in
               guard let snapshot = querySnapshot else {
                        print("Error retreiving snapshots \(error!)")
                        return
                    }
                   self.array.removeAll()
                               for document in snapshot.documents{
                                   self.array.append(document.get("game") as! String)
                               }
                           
                      
                       self.tableView.reloadData()
                       //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                       //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
                   }
                   
               }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell_football")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
}
