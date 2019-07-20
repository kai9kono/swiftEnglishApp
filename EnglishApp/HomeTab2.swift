
//
//  HomeTab2.swift
//  EnglishApp
//
//  Created by Kai Kono on 7/14/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit
import Firebase

class HomeTab2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var recentAnswers = [String]()
    var ref: DatabaseReference!
    var databaseHandle: DatabaseHandle!
    var myIndex2 = 0
    
    @IBOutlet var recentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recentsTableView.allowsSelection = true
        recentsTableView.dataSource = self as UITableViewDataSource
        recentsTableView.delegate = self
        
        recentsTableView.tableFooterView = UIView()
        
        let nib = UINib(nibName: "RecentsCell", bundle: Bundle.main)
        recentsTableView.register(nib, forCellReuseIdentifier: "recentCell")
        
        ref = Database.database().reference()
        
        databaseHandle = ref?.child("Answers").observe(.childAdded, with: {(snapshot) in
            
            let recentanswer = snapshot.value as? String
            if let actualanswer = recentanswer {
                self.recentAnswers.append(actualanswer)
                self.recentsTableView.reloadData()
                
            }
        })
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recentAnswers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentCell") as! RecentsCell
        
        cell.recentLabel.text = recentAnswers[indexPath.row]
        cell.recentArrowImage.image = UIImage(named: "arrow.png")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueToReview", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToReview" {
            //indexPath.row の数字を持ち越したい　to ReviewScreenController.swift
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
    
}
