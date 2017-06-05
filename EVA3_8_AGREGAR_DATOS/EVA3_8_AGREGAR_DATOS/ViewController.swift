//
//  ViewController.swift
//  EVA3_8_AGREGAR_DATOS
//
//  Created by administrador on 16/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var arreglo: NSMutableArray = []
    
    @IBOutlet weak var tlbVwLista: UITableView!
    @IBOutlet weak var txtFldDatos: UITextField!
    
    @IBAction func capturaDatos(sender: UIButton) {
        let ruta = obtenRuta()
        let sCade = txtFldDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tlbVwLista.reloadData()
    }
    
    func obtenRuta() -> NSURL{
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Abrir el archivo, Leer los datos, Agregar datos al arreglo
        let ruta = obtenRuta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
        
       
    }
}

