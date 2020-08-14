//
//  Tennis.swift
//  THS
//
//  Created by Samuel Ford on 6/12/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Tennis: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = [String]()
    @IBOutlet weak var tableview_tennis: UITableView!
    
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Firestore.firestore().collection("VolleyBall").addSnapshotListener(){ querySnapshot, error in
                          guard let snapshot = querySnapshot else {
                                   print("Error retreiving snapshots \(error!)")
                                   return
                               }
                              self.array.removeAll()
                                          for document in snapshot.documents{
                                              self.array.append(document.get("game") as! String)
                                          }
                                      
                                 
                                  self.tableview_tennis.reloadData()
                                  //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                                  //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
                              }
                              
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

