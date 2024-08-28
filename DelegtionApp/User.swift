//
//  User.swift
//  DelegtionApp
//
//  Created by Александр on 28.08.2024.
//

import Foundation

struct User {
    var name: String
    var surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
