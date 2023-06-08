//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 06.06.2023.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Artem"
    private let password = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userNameForWelcome = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func loginButtonTapped() {
        guard userNameTF.text == userName && passwordTF.text == password else {
            showAlert(whith: "Oops! 😳", and: "Incorrect username or password")
            passwordTF.text = ""
            return
        }
    }
    @IBAction func forgotUserNameTapped() {
        showAlert(whith: "Oops! 😳", and: "Your User name is: \(userName) ")
    }
    @IBAction func forgotPasswordTapped() {
        showAlert(whith: "Oops! 😳", and: "Your password is: \(password)")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
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
