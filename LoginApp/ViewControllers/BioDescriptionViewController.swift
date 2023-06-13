//
//  BioDescriptionViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 09.06.2023.
//

import UIKit

class BioDescriptionViewController: UIViewController {
    
    @IBOutlet var bioDescriptionLabel: UILabel!
    
    var user: User!
    
    private let primaryColor = UIColor(
        red: 120/255,
        green: 109/255,
        blue: 190/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 150/255,
        green: 220/255,
        blue: 148/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        bioDescriptionLabel.text = user.person.bio
        view.addVecticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)

    }
}
