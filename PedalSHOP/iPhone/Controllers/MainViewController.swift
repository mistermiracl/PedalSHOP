//
//  MainViewController.swift
//  PedalSHOP
//
//  Created by Alumno-DG on 14/11/17.
//  Copyright © 2017 Alumno-DG. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuVisible: Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    @IBAction func showSideBar(_ sender: Any) {
        
    }
}
