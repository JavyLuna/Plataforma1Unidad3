//
//  ViewController.swift
//  EVA3_5_PERSISTENCIA
//
//  Created by administrador on 08/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var lblMostrar: UILabel!
    @IBAction func btnGuardar(sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do{
          try txtFldDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UPS")
        }
    }
    @IBAction func btnLeer(sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do{
            try lblMostrar.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UPS")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

