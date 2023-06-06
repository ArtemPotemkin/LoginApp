//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 06.06.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "Artem"
    let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButtonTapped() {
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(whith: "Oops! 😳", and: "Your User name is: \(userName) ")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(whith: "Oops! 😳", and: "Your password is: \(password)")
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(whith title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
