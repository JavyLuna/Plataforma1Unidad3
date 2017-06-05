//
//  ViewController.swift
//  EVA3_6_PERSISTENCIA_2
//
//  Created by administrador on 09/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var misSliders: [UISlider]!
    @IBOutlet weak var lblInfomarcion: UILabel!
    @IBOutlet weak var txtVwDatos: UITextView!
    
    @IBAction func btnGuardar(sender: UIButton) {
        //OBTENER LA RUTA DEL DIRECTORIO DONDE GUARDAREMOS
        let tempDir = NSTemporaryDirectory()
        //OBTENER LA URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //NOMBRE DEL ARCHIVO
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatosSlider.txt")
        //Convertimos el arreglo y declaramos cual de los valores queremos guardar y volvemos a convertir
        //los datos a NSArray
        let arreglo = (misSliders as NSArray).valueForKey("value") as! NSArray
        //Guardamos los datos en el archivo
        arreglo.writeToURL(archivo, atomically: true)
    }
    
    @IBAction func btnVisualizar(sender: UIButton) {
        //OBTENER LA RUTA DEL DIRECTORIO DONDE GUARDAREMOS
        let tempDir = NSTemporaryDirectory()
        //OBTENER LA URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //NOMBRE DEL ARCHIVO
        let archivo = tempDirURL.URLByAppendingPathComponent("misdatosSlider.txt")
        //Verificamos que el archivo se haya creado
        if (NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)) {
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count {
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                txtVwDatos.text = cade
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //txtVwDatos.text = "\(misSliders.value)"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

