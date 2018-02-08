//
//  UserBC.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class UserBC: NSObject {

    class func loginBC(username usr: String, password pass: String, valid: @escaping (_ isValid: Bool) -> Void) -> Void{
        UserWS.login { (users) in
            
            var isValid: Bool = false
            
            users.forEach({ u in
                if u.username == usr && u.password == pass{
                    isValid = true
                }
            })
            
            valid(isValid)
        }
    }
    
}
