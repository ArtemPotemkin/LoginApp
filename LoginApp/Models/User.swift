//
//  User.swift
//  LoginApp
//
//  Created by Артём Потёмкин on 09.06.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Artem",
            password: "123",
            person:
                Person(
                    name: "Artem",
                    surname: "Potemkin",
                    yearOfBirth: "1988",
                    currentPlaceOfWork: "Skillbox",
                    bio: "Русский поэт, прозаик и публицист, классик русской литературы. Детские годы писатель провел в Ярославской губернии, селе Грешнево, в родовом имении. В возрасте 11 лет поступил в гимназию, где учился до 5 класса. С учебой у юноши не складывалась. Именно в этот период он начинает писать свои первые стихотворения сатирического содержания и записывать их в тетрадь.")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let yearOfBirth: String
    let currentPlaceOfWork: String
    let bio: String
    var fullName: String {
        "\(name) \(surname)"
    }
}
