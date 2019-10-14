//
//  ApiService.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/12/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation
import Alamofire



class ApiService {
    
    static func login( request : RequestLogin , completion : @escaping (LoginData) -> Void , complationError : @escaping (Int) -> Void ) {
        let jsonDecoder = JSONDecoder()
        _ = JSONEncoder()
        AF.request(ApiContant.LOGIN_APP, method: .post , parameters: request)
            .responseJSON { response in
                do {
                    let data = try jsonDecoder.decode(ResponseLogin.self, from: response.data! )
                    print(data)
                    completion(data.login[0])
                } catch {
                    complationError(10)
                }
        }
    }
}
