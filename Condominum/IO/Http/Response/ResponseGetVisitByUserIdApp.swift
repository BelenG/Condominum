//
//  Response.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/16/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation
class ReponseGetVisitByUserIdApp : Codable {
    var ListVisit : [DataGetVisitByUserIdApp]
}

class DataGetVisitByUserIdApp : Codable {
    var VisitId : Int
    var Name : String?
    var Occupation : String?
    var Phone : String?
    var Email : String?
    var DateVisit : String?
    var CreationDate : String?
    var Details : String?
    var Code : String?
    var UserId : Int
    var Tolerance : Int
    var TypeVisit : Int?
    var Transport : String?
    var People : Int?
    var DateFinVisit : String?
    var Brand : String?
    var Model : String?
    var Plate : String?
    var Color : String?
    var Year : Int?
}
