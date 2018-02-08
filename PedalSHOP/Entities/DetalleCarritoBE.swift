//
//  DetalleCarritoBE.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 28/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class DetalleCarritoBE: NSObject {
    var productoId: Int32!
    var cantidad: Int32!
    var precioTotal: Decimal!
    
    init(productoId: Int32, cantidad: Int32, precioTotal: Decimal){
        self.productoId = productoId
        self.cantidad = cantidad
        self.precioTotal = precioTotal
    }
    
    override init(){
    }
    
}
