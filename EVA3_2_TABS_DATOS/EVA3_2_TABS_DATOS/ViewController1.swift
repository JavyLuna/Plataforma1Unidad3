//
//  ViewController1.swift
//  EVA3_2_TABS_DATOS
//
//  Created by administrador on 02/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lblMostrar: UILabel!
    var sCade = "Inicio" //Segunda parte de la practica
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Uno - View Did Load")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Uno - View will Appear")
        //let global = self.tabBarController as! TabBarController
        //lblMostrar.text = global.sCade
        lblMostrar.text = sCade
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
