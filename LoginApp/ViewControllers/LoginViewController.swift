//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 06.06.2023.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        userNameTF.text = user.userName
        passwordTF.text = user.password
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationController = viewController as? UINavigationController {
                guard let userBioVC = navigationController.topViewController as? UserBioViewController else { return }
                userBioVC.user = user
            }
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginButtonTapped()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func loginButtonTapped() {
        guard userNameTF.text == user.userName,
                passwordTF.text == user.password else {
            showAlert(
                title: "Oops! 😳",
                message: "Incorrect username or password",
                textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops! 😳", message: "Your user name is: \(user.userName)")
        : showAlert(title: "Oops! 😳", message: "Your password is: \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}


// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(title: String,message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

