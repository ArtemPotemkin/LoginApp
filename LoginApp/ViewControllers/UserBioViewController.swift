//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 09.06.2023.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userYearOfBirdLabel: UILabel!
    @IBOutlet var userCurrentWorkLabel: UILabel!
    
    var userName = "Username"
    var userSurname = "UserSurname"
    var userYearOfBirth = "000"
    var userCurrenWork = "00"
    var userBio = ""
    
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
        view.addVecticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userNameLabel.text = userName
        userSurnameLabel.text = userSurname
        userYearOfBirdLabel.text = userYearOfBirth
        userCurrentWorkLabel.text = userCurrenWork
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? BioDescriptionViewController else { return }
        userBioVC.bio = userBio
    }
}
