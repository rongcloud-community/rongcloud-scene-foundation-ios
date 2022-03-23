//
//  AppEnvironment.swift
//  RCE
//
//  Created by 叶孤城 on 2021/4/19.
//

import Foundation

public var isAppStoreAccount: Bool = false

public struct Environment {
    public static var url: URL = URL(string: "https://xxx/")!
    
    public static var rcKey: String = ""
    
    public static var umengKey: String = ""
    
    public static var buglyKey: String = ""
    
    public static var MHBeautyKey: String = ""
 
    /// 请申请您的 BusinessToken：https://rcrtc-api.rongcloud.net/code
    public static var businessToken: String  = ""
    
    /// Music HIFive
    /// appId
    public static var hiFiveAppId: String = ""
    
    /// server code
    public static var hiFiveServerCode: String = ""
    
    /// server version
    public static var hiFiveServerVersion: String = ""
}
