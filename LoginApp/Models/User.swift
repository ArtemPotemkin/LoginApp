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
                    yearOfBirth: 1988,
                    currentPlaceOfWork: "Skillbox",
                    bio: "Родился в Москве. Тут еще должна быть гора какого-то текста. Но он пока еще в разаработке, т.к. вряд ли это кто-нибудь будет читать. Дважды два четыре, раз словечко два словечко будет песенка")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        name + " " + surname
    }
    let yearOfBirth: Int
    let currentPlaceOfWork: String
    let bio: String

}
