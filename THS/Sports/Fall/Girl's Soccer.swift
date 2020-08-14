//
//  Girl's Soccer.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Girl_s_Soccer: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    @IBOutlet weak var tableview_gsoccer: UITableView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Firestore.firestore().collection("Football").addSnapshotListener(){ querySnapshot, error in
                     guard let snapshot = querySnapshot else {
                              print("Error retreiving snapshots \(error!)")
                              return
                          }
                         self.array.removeAll()
                                     for document in snapshot.documents{
                                         self.array.append(document.get("game") as! String)
                                     }
                                 
                            
                             self.tableview_gsoccer.reloadData()
                             //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                             //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
                         }
                         
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


