//
//  CarritoBE.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 28/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class CarritoBE: NSObject {
    var detalles: [DetalleCarritoBE]!
    
    init(detalles: [DetalleCarritoBE]){
        self.detalles = detalles
    }
    
    override init() {
    }
    
}
