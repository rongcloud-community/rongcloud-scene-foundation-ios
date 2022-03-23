//
//  AppEnvironment.swift
//  RCE
//
//  Created by 叶孤城 on 2021/4/19.
//

import Foundation

public var isAppStoreAccount: Bool = false

public struct Environment {
    static var url: URL = URL(string: "https://xxx/")!
    
    static var rcKey: String = ""
    
    static var umengKey: String = ""
    
    static var buglyKey: String = ""
    
    static var MHBeautyKey: String = ""
 
    /// 请申请您的 BusinessToken：https://rcrtc-api.rongcloud.net/code
    static var businessToken: String  = ""
    
    /// Music HIFive
    /// appId
    static var hiFiveAppId: String = ""
    
    /// server code
    static var hiFiveServerCode: String = ""
    
    /// server version
    static var hiFiveServerVersion: String = ""
}
