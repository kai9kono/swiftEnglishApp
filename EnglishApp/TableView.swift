//
//  ViewController.swift
//  EnglishApp
//
//  Created by Kai Kono on 6/22/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit

class TableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var courseTableView: UITableView!
    
    var course = ["1", "2"]
    var myIndex1 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseTableView.dataSource = self
        courseTableView.delegate = self
        
        courseTableView.tableFooterView = UIView()
        
        let nib = UINib(nibName: "CourseCell", bundle: Bundle.main)
        courseTableView.register(nib, forCellReuseIdentifier: "coursenamecell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return course.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "coursenamecell") as! CourseCell
        
        cell.courseName.text = course[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex1 = indexPath.row
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "segue", sender: self)
        
    }
}
