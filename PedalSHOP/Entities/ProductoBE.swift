//
//  ProductoBE.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 28/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class ProductoBE: NSObject {
    var productoId: Int!
    var marca: String!
    var modelo: String!
    var precio: Decimal!
    var tipo: Int!
    
    init(productoId: Int, marca: String, modelo: String, precio: Decimal, tipo: Int){
        self.productoId = productoId
        self.marca = marca
        self.modelo = modelo
        self.precio = precio
        self.tipo = tipo
    }
    
    override init(){
        
    }
    
}
