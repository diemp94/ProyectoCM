//
//  Controller.swift
//  segundo_parcial
//
//  Created by macbook on 07/05/18.
//  Copyright © 2018 GoMeVaPa. All rights reserved.
//

import UIKit

let VALID_CUPON = "ANGELES"

class Departamento {
    let title: String
    let image: UIImage
    let productos: [Producto]
    
    init(title: String, image: UIImage, productos: [Producto]) {
        self.title = title
        self.image = image
        self.productos = productos
    }
}
class Producto {
    let title: String
    let price : String
    init(title: String, price: String = "$15") {
        self.title = title
        self.price = price
    }
}

