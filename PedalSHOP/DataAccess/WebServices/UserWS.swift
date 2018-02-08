//
//  UserWS.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class UserWS: NSObject {
    private static let URL: String = "https://api.myjson.com/bins/"
    
    class func login(valid: @escaping (_ users: [UserBE]) -> Void) -> Void{
        let PATH: String = "87myf.json"
        
        CDMWebSender.doGETToURL(URL, withPath: PATH, withParameter: nil) { (response) in
            let users = CDMWebResponse.getArrayDictionary(response.JSON)
            
            //let serviceResponse = CDMWebResponse.getDictionary(response.JSON)
            
            
            
            //let serviceResponse =
            
            //print(serviceResponse)
            var usersArray: [UserBE] = [UserBE]()
            
            users.forEach({ (u) in
                usersArray.append(UserBE.parseFromDictionary(u))
            })
            
            valid(usersArray)
            
        }
    }
}
