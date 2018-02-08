//
//  GuitarraTableViewCell.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class GuitarraTableViewCell: UITableViewCell {

    @IBOutlet weak var lblmarca: UILabel!
    @IBOutlet weak var lblmodelo: UILabel!
    @IBOutlet weak var lblprecio: UILabel!
    @IBOutlet weak var lblcolor: UILabel!
    @IBOutlet weak var imgGuitar: UIImageView!
    
    var objGuitarra : GuitarraBE!
    
    func actualizarData(){
        
        self.lblmarca.text = "\(self.objGuitarra.guitarra_marca!)"
        self.lblmodelo.text = "\(self.objGuitarra.guitarra_modelo!)"
        self.lblprecio.text = "\(self.objGuitarra.guitarra_precio!)"
        self.lblcolor.text = "\(self.objGuitarra.guitarra_color!)"
        
        CDMImageDownloaded.descargarImagen(enURL: self.objGuitarra.guitarra_imagen, paraImageView: self.imgGuitar, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
            if self.objGuitarra.guitarra_imagen!==urlImagen{
                self.imgGuitar.image=imagen
            }
        }
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
