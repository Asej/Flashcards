//
//  ViewController.swift
//  Flashcards
//
//  Created by Anthony Edwards on 10/13/18.
//  Copyright © 2018 Anthony Edwards. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UIView!
    @IBOutlet weak var fr: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(fr.isHidden == false){
               fr.isHidden = true;
        }else{
               fr.isHidden = false;
        }
     
    }
    func updateFlashCard(question: String, answer: String){
        fr.text = question
        backLabel.text = answer
    }
    @IBAction func Correct(_ sender: Any) {
        frontLabel.backgroundColor = UIColor.green;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        
        if(segue.identifier == "EditSegue"){
            creationController.initialQuestion = fr.text!
            creationController.initialAnswer = backLabel.text!
        }
    }


}

