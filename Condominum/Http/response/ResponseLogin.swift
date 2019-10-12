//
//  ResponseLogin.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/12/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation

class ResponseLogin : Codable {
    var message : String
    var ex : Bool
    var login : LoginData
    
    enum CodingKeys: String, CodingKey {
        case message
        case ex
        case login = "data"
    }
}

class LoginData : Codable {
    var clientId : Int
    var email : String
    var firstName : String
    var image : String
    var isEnabled : Bool
    var lastName : String
    var registrationDate : String
    var userId : Int
    var userName : String
    
    enum CodingKeys: String, CodingKey {
        case clientId = "ClientId"
            , email = "Email"
            , firstName = "FirstName"
            , image = "Image"
            , isEnabled = "IsEnabled"
            , lastName = "LastName"
            , registrationDate = "RegistrationDate"
            , userId = "UserId"
            , userName = "Username"
    }
}
