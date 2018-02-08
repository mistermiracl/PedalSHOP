//
//  UserBE.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class UserBE: NSObject {
    var userId: Int!
    var username: String!
    var password: String!
    var email: String!
    var nombre: String!
    var apellido: String!
    
    override init() {
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        self.userId = aDecoder.decodeObject(forKey: "userId") as! Int
        self.username = aDecoder.decodeObject(forKey: "username") as! String
        self.password = aDecoder.decodeObject(forKey: "password") as! String
        self.email = aDecoder.decodeObject(forKey: "email") as! String
        self.nombre = aDecoder.decodeObject(forKey: "nombre") as! String
        self.apellido = aDecoder.decodeObject(forKey: "apellido") as! String
    }
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(self.userId, forKey: "userId")
        aCoder.encode(self.username, forKey: "usuarname")
        aCoder.encode(self.password, forKey: "password")
        aCoder.encode(self.email, forKey: "email")
        aCoder.encode(self.nombre, forKey: "nombre")
        aCoder.encode(self.apellido, forKey: "apellido")
    }
    
    class func parseFromDictionary(_ dic: [String : Any]) -> UserBE{
        let usr = UserBE()
        
        usr.userId = CDMWebResponse.getInt(dic["userId"])
        usr.username = CDMWebResponse.getString(dic["username"])
        usr.password = CDMWebResponse.getString(dic["password"])
        usr.email = CDMWebResponse.getString(dic["email"])
        usr.nombre = CDMWebResponse.getString(dic["nombre"])
        usr.apellido = CDMWebResponse.getString(dic["apellido"])
        
        return usr
    }
}
