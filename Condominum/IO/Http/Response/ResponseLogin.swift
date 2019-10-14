//
//  ResponseLogin.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/12/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation

class ResponseLogin : Codable {
    var login : [LoginData]
    
    enum CodingKeys: String, CodingKey {
        case login = "Login"
    }
}

class LoginData : Codable {
    var email : String
    var extNum : String
    var img : String
    var name : String
    var ownerId : Int
    var ownerTypeEstateId : Int
    var phone : String
    var politics : Bool
    var street : String
    var userId : Int
    var userRolId : Int
    var username : String
    
    enum CodingKeys: String, CodingKey {
        case email = "Email"
        , extNum = "ExternalNumber"
        , img = "Image"
        , name = "Name"
        , ownerId = "OwnerId"
        , ownerTypeEstateId = "OwnerTypeEstateId"
        , phone = "Phone"
        , politics = "Politics"
        , street = "Street"
        , userId = "UserId"
        , userRolId = "UserRolId"
        , username = "Username"
    }
}
