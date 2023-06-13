//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 09.06.2023.
//

import UIKit

class UserBioViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userYearOfBirdLabel: UILabel!
    @IBOutlet var userCurrentWorkLabel: UILabel!
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
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
        view.addVecticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userNameLabel.text = user.person.name
        userSurnameLabel.text = user.person.surname
        userYearOfBirdLabel.text = user.person.yearOfBirth
        userCurrentWorkLabel.text = user.person.currentPlaceOfWork
        photoImage.image = UIImage(named: user.person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? BioDescriptionViewController else { return }
        userBioVC.user = user
    }
}
