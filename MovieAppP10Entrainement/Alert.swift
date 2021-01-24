//
//  Alert.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 21/11/2020.
//

import Foundation
import UIKit
extension UIViewController {
    ///present allert
    func presentAlert() {
        let alertVC = UIAlertController(title: "Error", message: "you need signal for the application to work", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
    func presentAlertWrongNumber() {
        let alertVC = UIAlertController(title: "Error", message: "Please enter a correct ammount", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
}
