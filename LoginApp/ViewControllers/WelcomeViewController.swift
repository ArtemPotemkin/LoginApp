//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 06.06.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userNameForWelcome = ""
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 230/255,
        blue: 148/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userNameForWelcome)!"
        view.addVecticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)

    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
}

// MARK: - Set Background color
extension UIView {
    func addVecticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
