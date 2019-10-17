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
    
    static func getVisitByUserIdApp( request : RequestGetVisitByUserIdApp ,
                 completion : @escaping (DataGetVisitByUserIdApp) -> Void , completionError : @escaping (Any) -> Void ) {
        
        let jsonDecoder = JSONDecoder()

        AF.request(ApiContant.GET_VISIT_BY_USER_ID_APP , method: .post , parameters: request)
            .responseJSON { response in
                do {
                    let data = try jsonDecoder.decode(ReponseGetVisitByUserIdApp.self, from: response.data! )
                    completion(data.ListVisit[0])
                } catch {
                    completionError(10)
        }
            //completion(response.result)
        }
    }
    
    static func insertVisit( request : Any , completion : @escaping (Any) -> Void ) {
            
    }

}
    
    
