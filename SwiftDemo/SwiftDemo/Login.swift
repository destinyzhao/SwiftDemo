//
//  Login.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/25.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

protocol LogManagerDelegate{
    func writeLog()
}

class UserController:LogManagerDelegate {
    var delegate:LogManagerDelegate?
    
    func login(){
        delegate?.writeLog()
    }
    
    func writeLog() {
        print("登陆成功！")
    }
    
}

class SqliteLogManager:LogManagerDelegate {
    func writeLog() {
        print("将日志记录到Sqlite数据库中")
    }
}
