//
//  two_hour_dealy_schedule.swift
//  THS
//
//  Created by Samuel Ford on 1/30/19.
//  Copyright © 2019 Samuel Ford. All rights reserved.
//

import UIKit

class two_hour_dealy_schedule: UIViewController {

    @IBOutlet weak var two_h_dealy: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func download_THD(_ sender: Any) {
        let imageData = UIImagePNGRepresentation(two_h_dealy.image!)
        let compresedImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compresedImage!, nil, nil, nil)
        
        let alert = UIAlertController(title: "Saved to Camera Roll", message: "Two hour delay schedule has been saved", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


