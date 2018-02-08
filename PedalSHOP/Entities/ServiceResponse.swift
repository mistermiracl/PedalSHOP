//
//  ServiceResponse.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 28/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class ServiceResponse: NSObject {
    
    var resultCode: Int!
    var resultMessage: String!
    var returnValue: Any!
    
    init(resultCode: Int, resultMessage: String, returnValue: Any){
        self.resultCode = resultCode
        self.resultMessage = resultMessage
        self.returnValue = returnValue
    }
    
    override init(){
        
    }
    
}
