//
//  ProblemViewController.swift
//  EnglishApp
//
//  Created by Kai Kono on 6/15/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit
import Firebase

class ProblemViewController: UIViewController {

    @IBOutlet var problemField: UITextView!
    @IBOutlet var AnswerField: UITextView!
    
    var problemText = ["""
                        Looking at the current political Scenario, one may easily co-relate violence with lower number of female participation in politics. Whether it is violence in Middle East or civilian war in European countries I personally believe that higher proportion of women politicians can be beneficial not only to bring down violence but crime as well.

                        Women are supposedly kind-hearted personalities who integrate people together start from the family itself like my mother or my wife. Besides this, they are proven team-builders who can circumvent any clash among people. Admittedly, a nation can be benefitted in terms of less violence if these peace-keepers are brought in front to lead the national or international politics.
                        
                        On the same time, people might argue about the weakness of a female leader related with the lack of firm determination and harsh punishment required to control violence, if she is lenient and soft-hearted. However, contemporary politics is based on general consensus where women also have equal rights. Good governance is very much possible under the leadership of a woman. Take Sonia Gandhi for example, she is able to manage a good coalition government and maintain peace among various parties and extremists who are ready to destroy peace and bring violence keeping the laws at bay.
                        
                        In sum, it is felt that women’s kind hearted personality will create a consensus among different groups or parties of a nation and it will definitely bring down violence. A healthy participation rate of female political leaders will create a world of peace lovers.
                        """
,"Orange"]
    
    let problemNum = Int.random(in: 0 ... 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    problemField.text = problemText[problemNum]
        
    self.problemField.layer.borderColor = UIColor.black.cgColor
    self.problemField.layer.borderWidth = 1
        
    self.AnswerField.layer.borderColor = UIColor.black.cgColor
    self.AnswerField.layer.borderWidth = 1
    
    }
    
    @IBAction func segueToCheck() {
        self.performSegue(withIdentifier: "segueToCheck", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let CheckAnswer = segue.destination as! SubmitCheck
    CheckAnswer.answer = AnswerField.text
    
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
