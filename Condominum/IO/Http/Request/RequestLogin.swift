//
//  RequestLogin.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/12/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation

//codable - solo pueden ser structs ??'

struct RequestLogin : Codable {
    var user : String
    var pass : String
}

