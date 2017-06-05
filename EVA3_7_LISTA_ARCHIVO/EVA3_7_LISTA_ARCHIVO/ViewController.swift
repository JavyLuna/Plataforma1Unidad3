//
//  ViewController.swift
//  EVA3_7_LISTA_ARCHIVO
//
//  Created by administrador on 11/05/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var arregloDatos: [String: [String]]!
    var arreglosClaves: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        print(ruta)
        
        let diccionarioDatos = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioDatos as! [String:[String]]
        arreglosClaves = (diccionarioDatos!.allKeys as! [String]).sort()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arreglosClaves.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arreglosClaves[section]
        let nombresSeccion = arregloDatos[clave]!
        return nombresSeccion.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath) as UITableViewCell
        let clave = arreglosClaves[indexPath.section]
        let nombresSeccion = arregloDatos[clave]!
        celda.textLabel?.text = nombresSeccion[indexPath.row]
        return celda 
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arreglosClaves[section]
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return arreglosClaves
    }
}

