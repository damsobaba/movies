//
//  QyestionViewController.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 23/01/2021.
//

import UIKit

class QyestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var answers: String = ""
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var addButon: UIButton!
    
    @IBOutlet weak var textField: UITextField!
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipesVC = segue.destination as? ListViewController {
            recipesVC.answers = answers
        }
    }
    
    
    func getFilms() {
        answers =  textField.text!
    }

    @IBAction func addButtonnPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "Result", sender: nil)
    }
    
    
    
}
