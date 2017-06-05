//
//  ViewController3.swift
//  EVA3_2_TABS_DATOS
//
//  Created by administrador on 02/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tres - View Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Tres- View will Appear")
        //let global = self.tabBarController as! TabBarController
        let misViewCtrl = self.tabBarController?.viewControllers //LISTA DE VIEW CONTROLLERS
        let ViewController12 = misViewCtrl![0] as! ViewController1 //ACCEDEMOS AL BUSCADO
        ViewController12.sCade = "Seleccione tres"
        
        //global.sCade = "Seleccione tres"
        //lblMostrar.text = global.sCade
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
