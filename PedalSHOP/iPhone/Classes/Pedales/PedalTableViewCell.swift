//
//  PedalTableViewCell.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class PedalTableViewCell: UITableViewCell {
    @IBOutlet weak var lblMarca: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblEfecto: UILabel!
    @IBOutlet weak var imgPedal: UIImageView!
    
    var objPedal : PedalBE!
    
    func actualizarData(){
        
        self.lblMarca.text = "\(self.objPedal.pedal_marca!)"
        self.lblModelo.text = "\(self.objPedal.pedal_modelo!)"
        self.lblPrecio.text = "\(self.objPedal.pedal_precio!)"
        self.lblEfecto.text = "\(self.objPedal.pedal_efecto!)"
        
        CDMImageDownloaded.descargarImagen(enURL: self.objPedal.pedal_imagen, paraImageView: self.imgPedal, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
            if self.objPedal.pedal_imagen!==urlImagen{
                self.imgPedal.image=imagen
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
