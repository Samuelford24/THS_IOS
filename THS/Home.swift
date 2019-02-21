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
    var ref1 : DatabaseReference!
    var handle1: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref1 = Database.database().reference()
        handle1 = ref1?.child("Delays").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                self.array1.append(item)
                self.Tableview_home.reloadData()
                //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
            }
            
        })
        
        
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
