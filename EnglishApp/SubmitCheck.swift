//
//  SubmitCheck.swift
//  EnglishApp
//
//  Created by Kai Kono on 7/14/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit
import Firebase

class SubmitCheck: UIViewController {

    @IBOutlet var answerCheckField: UITextView!
    var ref: DatabaseReference!
    var answer :String?
    var answerNum: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        answerCheckField.text = answer
        
        self.answerCheckField.layer.borderColor = UIColor.black.cgColor
        self.answerCheckField.layer.borderWidth = 1
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addToUser() {
        answerNum = answerNum + 1
        print(answerNum)
    }
    
    @IBAction func submitProblem() {
        ref?.child("Answers").childByAutoId().setValue(answer)
        ref?.child("Corrections").childByAutoId().setValue("")
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
