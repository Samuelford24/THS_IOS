//
//  FirstViewController.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase


class Home: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var array1 = [String]()
    @IBOutlet weak var Tableview_home: UITableView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Firestore.firestore().collection("Delays").addSnapshotListener(){ querySnapshot, error in
        guard let snapshot = querySnapshot else {
                 print("Error retreiving snapshots \(error!)")
                 return
             }
            self.array1.removeAll()
                        for document in snapshot.documents{
                            self.array1.append(document.get("delay") as! String)
                        }
                    
               
                self.Tableview_home.reloadData()
                //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
            }
            
        }
        
        
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tableview_home.dequeueReusableCell(withIdentifier: "home_cell")! as UITableViewCell
         cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = array1[indexPath.row]
        
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
