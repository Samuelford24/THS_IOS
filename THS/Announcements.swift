//
//  Announcements.swift
//  THS
//
//  Created by Samuel Ford on 6/4/18.
//  Copyright © 2018 Samuel Ford. All rights reserved.
//

import UIKit
import Firebase

class Announcements: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var array = [String]()
    @IBOutlet weak var Tableview_announcements: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      Firestore.firestore().collection("Announcements").addSnapshotListener(){ querySnapshot, error in
               guard let snapshot = querySnapshot else {
                        print("Error retreiving snapshots \(error!)")
                        return
                    }
                   self.array.removeAll()
                               for document in snapshot.documents{
                                   self.array.append(document.get("announcement") as! String)
                               }
                           
                      
                       self.Tableview_announcements.reloadData()
                       //let bottomOffset = CGPoint(x: 0, y: self.Tableview_home.contentSize.height - self.Tableview_home.frame.size.height)
                       //self.Tableview_home.setContentOffset(bottomOffset, animated: true)
                   }
                   
               }
   /* func createPdfFromTableView()
    {
        let priorBounds: CGRect = self.Tableview_announcements.bounds
        let fittedSize: CGSize = self.Tableview_announcements.sizeThatFits(CGSize(width: priorBounds.size.width, height: self.Tableview_announcements.contentSize.height))
        self.Tableview_announcements.bounds = CGRect(x: 0, y: 0, width: fittedSize.width, height: fittedSize.height)
        self.Tableview_announcements.reloadData()
        let pdfPageBounds: CGRect = CGRect(x: 0, y: 0, width: fittedSize.width, height: (fittedSize.height))
        let pdfData: NSMutableData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageBounds, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageBounds, nil)
        self.Tableview_announcements.layer.render(in: UIGraphicsGetCurrentContext()!)
        UIGraphicsEndPDFContext()
        let documentDirectories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
        let documentsFileName = documentDirectories! + "/" + "Announcements"
        pdfData.write(toFile: documentsFileName, atomically: true)
        print("1",documentsFileName)
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tableview_announcements.dequeueReusableCell(withIdentifier: "announce_cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


