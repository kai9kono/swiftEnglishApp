//
//  HomeTab1.swift
//  EnglishApp
//
//  Created by Kai Kono on 7/14/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit

class HomeTab1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToProblem() {
        self.performSegue(withIdentifier: "goToProblemSegue", sender: self)
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
