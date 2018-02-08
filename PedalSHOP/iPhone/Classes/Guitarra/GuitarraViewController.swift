//
//  GuitarraViewController.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class GuitarraViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tblGuitarra: UITableView!
    var arrayGuitarras = [GuitarraBE]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayGuitarras.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "GuitarraTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GuitarraTableViewCell
        
        cell.objGuitarra = self.arrayGuitarras[indexPath.row]
        cell.actualizarData()
        
        return cell
    }
    
    func llenarData(){
        let objGuitarra1 = GuitarraBE()
        objGuitarra1.guitarra_marca = "GIBSON"
        objGuitarra1.guitarra_modelo = "LES PAUL"
        objGuitarra1.guitarra_precio = 3500
        objGuitarra1.guitarra_color = "ROJA"
        objGuitarra1.guitarra_imagen = "https://worldguitars.blob.core.windows.net/wp-uploads/2015/10/gibson_custom_winered_cs4047602-full-1180x664.jpg"
        
        let objGuitarra2 = GuitarraBE()
        objGuitarra2.guitarra_marca = "GIBSON"
        objGuitarra2.guitarra_modelo = "SG"
        objGuitarra2.guitarra_precio = 3800
        objGuitarra2.guitarra_color = "GUINDA"
        objGuitarra2.guitarra_imagen = "https://a4.pbase.com/g9/73/15373/2/155071938.LQmN1ttz.jpg"
        
        let objGuitarra3 = GuitarraBE()
        objGuitarra3.guitarra_marca = "FENDER"
        objGuitarra3.guitarra_modelo = "STRATOCASTER"
        objGuitarra3.guitarra_precio = 2800
        objGuitarra3.guitarra_color = "BLANCA"
        objGuitarra3.guitarra_imagen = "http://res.cloudinary.com/powerreviews/image/upload/f_auto,w_1000,h_487/prod/o46tmcetbthlphyzu3h8.jpg"
        
        let objGuitarra4 = GuitarraBE()
        objGuitarra4.guitarra_marca = "FENDER"
        objGuitarra4.guitarra_modelo = "TELECASTER"
        objGuitarra4.guitarra_precio = 2500
        objGuitarra4.guitarra_color = "BLANCA"
        objGuitarra4.guitarra_imagen = "https://st.depositphotos.com/2021695/3963/i/950/depositphotos_39630227-stock-photo-electric-guitar.jpg"
        
        let objGuitarra5 = GuitarraBE()
        objGuitarra5.guitarra_marca = "DEAN FROM HELL"
        objGuitarra5.guitarra_modelo = "RAZORBACK"
        objGuitarra5.guitarra_precio = 2800
        objGuitarra5.guitarra_color = "AZUL"
        objGuitarra5.guitarra_imagen = "https://img00.deviantart.net/df66/i/2008/362/8/0/dean_from_hell_razorback_by_pakman33.jpg"

        
        self.arrayGuitarras.append(objGuitarra1)
        self.arrayGuitarras.append(objGuitarra2)
        self.arrayGuitarras.append(objGuitarra3)
        self.arrayGuitarras.append(objGuitarra4)
        self.arrayGuitarras.append(objGuitarra5)

        self.tblGuitarra.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        llenarData()
        self.tblGuitarra.rowHeight = UITableViewAutomaticDimension
        self.tblGuitarra.estimatedRowHeight = 172
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail2", sender: self.arrayGuitarras[indexPath.row])
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail2"{
            let detail = segue.destination as! CarritoViewController
            detail.producto2 = sender as? GuitarraBE
        }
    }
    

}
