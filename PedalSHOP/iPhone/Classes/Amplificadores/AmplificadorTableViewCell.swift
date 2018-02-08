//
//  AmplificadorTableViewCell.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class AmplificadorTableViewCell: UITableViewCell {

    @IBOutlet weak var lblmarca: UILabel!
    @IBOutlet weak var lblmodelo: UILabel!
    @IBOutlet weak var lblprecio: UILabel!
    @IBOutlet weak var lbltipo: UILabel!
    @IBOutlet weak var imgAmplificador: UIImageView!
    
    var objAmplificador : AmplificadorBE!
    
    func actualizarData(){
        
        self.lblmarca.text = "\(self.objAmplificador.amplificador_marca!)"
        self.lblmodelo.text = "\(self.objAmplificador.amplificador_modelo!)"
        self.lblprecio.text = "\(self.objAmplificador.amplificador_precio!)"
        self.lbltipo.text = "\(self.objAmplificador.amplificador_tipo!)"
        
        CDMImageDownloaded.descargarImagen(enURL: self.objAmplificador.amplificador_imagen, paraImageView: self.imgAmplificador, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
            if self.objAmplificador.amplificador_imagen!==urlImagen{
                self.imgAmplificador.image=imagen
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
