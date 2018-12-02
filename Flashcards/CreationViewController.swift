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
<<<<<<< HEAD
      
    }
    @IBOutlet weak var intialQuestion: UITextField!
=======
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
>>>>>>> dc45978db53858999f88816734b0b47d8aecee32
    @IBAction func didTapOnCancel(_ sender: Any) {
           dismiss(animated: true)
    }
    
    @IBOutlet var questionTextField: UITextField!
<<<<<<< HEAD
=======
    
>>>>>>> dc45978db53858999f88816734b0b47d8aecee32
    @IBOutlet weak var answerTextField: UITextField!
    var initialQuestion: String?
    var initialAnswer: String?
    @IBAction func didTapDone(_ sender: Any) {
<<<<<<< HEAD
      
        let questionText = questionTextField.text;
        let answerText = answerTextField.text;
        dismiss(animated: true)
=======
        let questionText = questionTextField.text
        let answerText = answerTextField.text

>>>>>>> dc45978db53858999f88816734b0b47d8aecee32
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
