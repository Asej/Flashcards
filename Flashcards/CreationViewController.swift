//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Anthony Edwards on 10/27/18.
//  Copyright © 2018 Anthony Edwards. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    var flashcardsController: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    @IBAction func didTapOnCancel(_ sender: Any) {
           dismiss(animated: true)
    }
    
    @IBOutlet var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    var initialQuestion: String?
    var initialAnswer: String?
    @IBAction func didTapDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text

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
