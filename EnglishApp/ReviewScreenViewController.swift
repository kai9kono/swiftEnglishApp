//
//  ReviewScreenViewController.swift
//  EnglishApp
//
//  Created by Kai Kono on 7/20/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit
import Firebase

class ReviewScreenViewController: UIViewController {

    @IBOutlet var correctionWindow: UITextView!
    
    var corrections = [String]()
    var ref: DatabaseReference!
    var databaseHandle: DatabaseHandle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.correctionWindow.layer.borderColor = UIColor.black.cgColor
        self.correctionWindow.layer.borderWidth = 1
        
        
        ref = Database.database().reference()
        
        databaseHandle = ref?.child("Corrections").observe(.childAdded, with: {(snapshot) in
            
            let recentcorrection = snapshot.value as? String
            if let actualcorrection = recentcorrection {
                self.corrections.append(actualcorrection)
                
            }
        })
        
        //correctionWindow.text = corrections[]
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
