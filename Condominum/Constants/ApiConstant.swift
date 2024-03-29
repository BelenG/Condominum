//
//  ApiConstant.swift
//  Condominum
//
//  Created by Aaron Carmona on 10/12/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import Foundation

class ApiContant {
    private static let URL_BASE_TESTING = "https://probedelivery.ever-track.com"
    private static let URL_BASE_PROD = "http://cm.colonosvallescondido.com.mx/WS_Login.asmx";
    
    private static let URL_BASE = URL_BASE_TESTING
    
    //static let KEEP_ACTIVE_SESSION = URL_BASE + "/KeepActiveSession"
    //static let LOGIN = URL_BASE + "/Login"
    static let LOGIN_APP = URL_BASE + "/WS_Login.asmx/LoginAPP"
    static let GET_VISIT_BY_USER_ID_APP = URL_BASE + "/ws_visit.asmx/getVisitByUserIdAPP"
    static let INSERT_VISIT_APP = URL_BASE + "/ws_visit.asmx/insertVisitAPP"
    
    static let URL_IMAGE = "https://rekognition-storage.s3.amazonaws.com/Visitas/"
    
    //static let LOGOUT = URL_BASE + "/Logout"
    //static let SETTINGS = URL_BASE + "/Settings"
    //static let VALIDATE_LOGIN = URL_BASE + "/ValidateLogin"
    //static let CHECK_SESSION = URL_BASE + "/checkSession"
    //static let PASSWORD_FORGOTTEN = URL_BASE + "/passwordForgotten"
    
}
