//
//  ViewController.swift
//  clase1
//
//  Created by alumno on 1/26/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTItulo: UILabel!
    @IBOutlet weak var sldNumeroImagen: UISlider!
    @IBOutlet weak var swModificacionManual: UISwitch!
    @IBOutlet weak var btnAcetar: UIButton!
    @IBOutlet weak var btnSiguiente: UIButton!
    @IBOutlet weak var sbgEstilos: UISegmentedControl!
    @IBOutlet weak var iviImagen: UIImageView!
    @IBOutlet weak var tfiNumeroImagen: UITextField!
    @IBOutlet weak var viewContenido: UIView!
    @IBOutlet weak var lblError: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sldNumeroImagen.value = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sldNumberImagenChange(_ sender: UISlider) {
        let numeroImagen = sender.value
        let num = Int(numeroImagen)
        
        iviImagen.image = UIImage(named:"image_\(num)")
    }
    
    @IBAction func swtModficarManualChange(_ sender: UISwitch) {
        let oculto = !sender.isOn
        viewContenido.isHidden = oculto
    }

    @IBAction func btnAceptarTouch(_ sender: UIButton) {
        
        let numOfImagen = tfiNumeroImagen.text
        let num = Int(numOfImagen!)
        
        if (num! >= 0 && num! <= 7) {
            iviImagen.image = UIImage(named:"image_\(num!)")
            lblError.text = ""
        }else{
            lblError.text = "Numero Incorrecto!!!"
        }
    }
    
    @IBAction func btnSiguienteTouch(_ sender: UIButton) {
        
    }
    
    @IBAction func sgcEstilochange(_ sender: UISegmentedControl) {
        let inicioSeleccionado = sender.selectedSegmentIndex
        var color:UIColor
        
        switch inicioSeleccionado {
        case 0:
            color = UIColor(red:1, green: 190/255.0, blue:0,alpha:1)
        case 1:
            color = UIColor.red
        default:
            color = UIColor.black
        }
        lblTItulo.backgroundColor =         color
        sldNumeroImagen.backgroundColor =   color
        swModificacionManual.onTintColor =  color
        btnAcetar.setTitleColor(color, for: UIControlState.normal)
        btnSiguiente.setTitleColor(color, for: UIControlState.normal)
        sbgEstilos.tintColor = color

    }
    

}

