//
//  TabBarController.swift
//  EVA3_2_TABS_DATOS
//
//  Created by administrador on 02/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    //var sCade = "Inicio"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        var sTitulo = ""
        if item == tabBar.items![0]{
            sTitulo = "Uno"
        }else if item == tabBar.items![1]{
            sTitulo = "Dos"
        }else {
            sTitulo = "Tres"
        }
        let alerta = UIAlertController(title: sTitulo, message: "Que onda que pex", preferredStyle: .Alert)
        let accion = UIAlertAction(title: "Okas", style: .Default, handler: nil)
        alerta.addAction(accion)
        presentViewController(alerta, animated: true, completion: nil)
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
