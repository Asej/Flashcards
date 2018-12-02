//
//  ViewController.swift
//  Flashcards
//
//  Created by Anthony Edwards on 10/13/18.
//  Copyright © 2018 Anthony Edwards. All rights reserved.
//

import UIKit

struct Flashcard{
    var question : String
    var answer : String
}
class ViewController: UIViewController {
    

    @IBOutlet weak var frontLabel: UIView!
    @IBOutlet weak var fr: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBAction func didTapPrev(_ sender: Any) {
    }
    @IBAction func didTapNext(_ sender: Any) {
    }
    @IBAction func Correct(_ sender: Any) {
        frontLabel.backgroundColor = UIColor.green;
    }
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(backLabel.isHidden == false){
               backLabel.isHidden = true;
        }else{
               backLabel.isHidden = false;
        }
        
    }
    var flashcards=[Flashcard]();
    var index = 0;

    @IBAction func nextPage(_ sender: Any) {
    }
    func updateFlashCard(question: String, answer: String){
        let flashcard = Flashcard(question: question, answer: answer)
        flashcards.append(flashcard)
        fr.text = question
        backLabel.text = answer
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateFlashCard(question: "What is the capital of Brasil", answer: "Brasília")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        
        if(segue.identifier == "EditSegue"){
            creationController.initialQuestion = backLabel.text!
            creationController.initialAnswer = fr.text!
        }
    }
}



