//
//  XKProjectModule.swift
//  XKProjectModule
//
//  Created by kenneth on 2022/4/21.
//

/*
 依赖库具体需要什么版本视情况而定，建议都保持最新
 */

import Foundation

public class XKProjectModule: NSObject {}

public struct XKProject {
    
    static let loginKey = "XK_LOGIN_KEY"
    static let taoluKey = "XK_TAOLU_KEY"
}

public extension XKProject {
    
    /// 设置登录状态
    static func setLogin(status: Bool) {
        UserDefaults.standard.set(status, forKey: loginKey)
        UserDefaults.standard.synchronize()
    }
    /// 登录状态
    static var loginStatus: Bool {
        return UserDefaults.standard.bool(forKey: loginKey)
    }
    /// 套路状态
    static func setTaolu(status: Bool) {
        UserDefaults.standard.set(status, forKey: taoluKey)
        UserDefaults.standard.synchronize()
    }
    /// 套路：true时代表要执行套路
    static var taoluStatus: Bool {
        return UserDefaults.standard.bool(forKey: taoluKey)
    }
}
