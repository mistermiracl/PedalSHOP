//
//  PedalViewController.swift
//  Pedal Shop
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class PedalViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tblPedal: UITableView!
    var arrayPedal = [PedalBE]()
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPedal.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PedalTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PedalTableViewCell
        
        cell.objPedal = self.arrayPedal[indexPath.row]
        cell.actualizarData()
        
        return cell
    }
    
    func llenarData(){
        let objPedal1 = PedalBE()
        objPedal1.pedal_marca = "BOSS"
        objPedal1.pedal_modelo = "AW-3"
        objPedal1.pedal_precio = 350
        objPedal1.pedal_efecto = "WAH"
        objPedal1.pedal_imagen = "https://mercasonic.soniccdn.com/sda/large/4872/2214872.jpg"
        
        let objPedal2 = PedalBE()
        objPedal2.pedal_marca = "BOSS"
        objPedal2.pedal_modelo = "DD-3"
        objPedal2.pedal_precio = 320
        objPedal2.pedal_efecto = "DELAY"
        objPedal2.pedal_imagen = "https://i.ebayimg.com/images/i/331454382974-0-1/s-l1000.jpg"

        let objPedal3 = PedalBE()
        objPedal3.pedal_marca = "BOSS"
        objPedal3.pedal_modelo = "DS-1"
        objPedal3.pedal_precio = 340
        objPedal3.pedal_efecto = "DISTORTION"
        objPedal3.pedal_imagen = "https://cdn.shopify.com/s/files/1/0606/8153/products/1__61057_1024x1024_070dde27-68f5-45c8-8072-23865a149b4d_1024x1024.jpeg?v=1498159775"
        
        let objPedal4 = PedalBE()
        objPedal4.pedal_marca = "BOSS"
        objPedal4.pedal_modelo = "RV-6"
        objPedal4.pedal_precio = 370
        objPedal4.pedal_efecto = "REVERB"
        objPedal4.pedal_imagen = "https://ssli.ebayimg.com/images/g/zTYAAOSwzRlaGbm7/s-l640.jpg"

        let objPedal5 = PedalBE()
        objPedal5.pedal_marca = "BOSS"
        objPedal5.pedal_modelo = "CS-3"
        objPedal5.pedal_precio = 360
        objPedal5.pedal_efecto = "COMPRESSION SUSTAINER"
        objPedal5.pedal_imagen = "https://cdn.shopify.com/s/files/1/0606/8153/products/1__29406_1024x1024_4d732b18-3a26-445e-9285-24dd6f33d6f7_1024x1024.jpeg?v=1498159066"

        
        self.arrayPedal.append(objPedal1)
        self.arrayPedal.append(objPedal2)
        self.arrayPedal.append(objPedal3)
        self.arrayPedal.append(objPedal4)
        self.arrayPedal.append(objPedal5)
        self.tblPedal.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        llenarData()
        self.tblPedal.rowHeight = UITableViewAutomaticDimension
        self.tblPedal.estimatedRowHeight = 198
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail3", sender: self.arrayPedal[indexPath.row])
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail3"{
            let detail = segue.destination as! CarritoViewController
            detail.producto3 = sender as? PedalBE
        }
    }
    

}
