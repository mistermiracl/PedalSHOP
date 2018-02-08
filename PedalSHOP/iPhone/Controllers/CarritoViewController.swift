//
//  CarritoViewController.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 28/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class CarritoViewController: UIViewController {

    @IBOutlet weak var lblmarca: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var imgProducto: UIImageView!
    
    var producto: AmplificadorBE?
    var producto2: GuitarraBE?
    var producto3: PedalBE?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let pro: AmplificadorBE = producto{
            self.lblmarca.text = pro.amplificador_marca
            self.lblModelo.text = pro.amplificador_modelo
            self.lblPrecio.text = "\(pro.amplificador_precio!)"
            CDMImageDownloaded.descargarImagen(enURL: self.producto?.amplificador_imagen, paraImageView: self.imgProducto, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
                if self.producto?.amplificador_imagen!==urlImagen{
                    self.imgProducto.image=imagen
                }
            }
            
        } else if let pro2:GuitarraBE = producto2{
            self.lblmarca.text = pro2.guitarra_marca
            self.lblModelo.text = pro2.guitarra_modelo
            self.lblPrecio.text = "\(pro2.guitarra_precio!)"
            CDMImageDownloaded.descargarImagen(enURL: self.producto2?.guitarra_imagen, paraImageView: self.imgProducto, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
                if self.producto2?.guitarra_imagen!==urlImagen{
                    self.imgProducto.image=imagen
                }
            }
            
        } else if let pro3:PedalBE = producto3{
            self.lblmarca.text = pro3.pedal_marca
            self.lblModelo.text = pro3.pedal_modelo
            self.lblPrecio.text = "\(pro3.pedal_precio!)"
            CDMImageDownloaded.descargarImagen(enURL: self.producto3?.pedal_imagen, paraImageView: self.imgProducto, conPlaceHolder: nil) { (esCorrecto, urlImagen, imagen) in
                if self.producto3?.pedal_imagen!==urlImagen{
                    self.imgProducto.image=imagen
                }
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
