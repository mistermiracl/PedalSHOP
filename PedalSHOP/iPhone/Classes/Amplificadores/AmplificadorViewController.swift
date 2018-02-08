//
//  AmplificadorViewController.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class AmplificadorViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tblAmplificador: UITableView!
    var arrayAmplificador = [AmplificadorBE]()
    var indexAmplificador: Int?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayAmplificador.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "AmplificadorTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AmplificadorTableViewCell
        
        cell.objAmplificador = self.arrayAmplificador[indexPath.row]
        cell.actualizarData()
        
        return cell
    }
    
    func llenarData(){
        let objAmplificador1 = AmplificadorBE()
        objAmplificador1.amplificador_marca = "Marshall"
        objAmplificador1.amplificador_modelo = "DSL 5C"
        objAmplificador1.amplificador_precio = 2000
        objAmplificador1.amplificador_tipo = "TUBOS"
        objAmplificador1.amplificador_imagen = "https://d1aeri3ty3izns.cloudfront.net/media/8/86877/1200/preview.jpg"
        
        let objAmplificador2 = AmplificadorBE()
        objAmplificador2.amplificador_marca = "VOX"
        objAmplificador2.amplificador_modelo = "VT 40X"
        objAmplificador2.amplificador_precio = 2500
        objAmplificador2.amplificador_tipo = "TUBOS"
        objAmplificador2.amplificador_imagen = "https://www.recomusic.com.my/image/recomusic/image/data/all_product_images/product-1528/Vox%20VT40X.jpg"
        
        let objAmplificador3 = AmplificadorBE()
        objAmplificador3.amplificador_marca = "Orange"
        objAmplificador3.amplificador_modelo = "CR 20L"
        objAmplificador3.amplificador_precio = 2000
        objAmplificador3.amplificador_tipo = "TRANSITORES"
        objAmplificador3.amplificador_imagen = "http://stylesmusic.com/wp-content/uploads/2014/08/CR20L-1.jpg"
        
        let objAmplificador4 = AmplificadorBE()
        objAmplificador4.amplificador_marca = "Laney"
        objAmplificador4.amplificador_modelo = "LV 300"
        objAmplificador4.amplificador_precio = 1800
        objAmplificador4.amplificador_tipo = "TUBOS"
        objAmplificador4.amplificador_imagen = "https://cdn.shopify.com/s/files/1/0183/0329/products/lv300twin_right_facing.jpeg?v=1510190163"
        
        let objAmplificador5 = AmplificadorBE()
        objAmplificador5.amplificador_marca = "Fender"
        objAmplificador5.amplificador_modelo = "GT 40"
        objAmplificador5.amplificador_precio = 1900
        objAmplificador5.amplificador_tipo = "TUBOS"
        objAmplificador5.amplificador_imagen = "https://www.rimmersmusic.co.uk/images/fender-mustang-gt-40-guitar-amp-p38106-66015_image.jpg"
        
        self.arrayAmplificador.append(objAmplificador1)
        self.arrayAmplificador.append(objAmplificador2)
        self.arrayAmplificador.append(objAmplificador3)
        self.arrayAmplificador.append(objAmplificador4)
        self.arrayAmplificador.append(objAmplificador5)
        self.tblAmplificador.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        llenarData()
        self.tblAmplificador.rowHeight = UITableViewAutomaticDimension
        self.tblAmplificador.estimatedRowHeight = 170

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail", sender: self.arrayAmplificador[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail"{
            let detail = segue.destination as! CarritoViewController
            detail.producto = sender as? AmplificadorBE
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
