//
//  ViewController.swift
//  animaciones
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadroVerde: UIView!
    @IBOutlet weak var vwCuadroRosa: UIView!
    @IBOutlet weak var lbMiTexto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.vwCuadroRosa.alpha = 0
        //Lo movemos hacia la izquierda
        lbMiTexto.center.x -= self.view.bounds.width
        
        lbMiTexto.layer.borderColor = UIColor.blue.cgColor
        lbMiTexto.layer.borderWidth = 1
        lbMiTexto.layer.cornerRadius = 5
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Al aparecer la UI se moverá 18 puntos a la derecha el cuadr verde
        //Esa transicion durará 1-7 segundos
        /*UIView.animate(withDuration: 2.5, animations: {
            self.vwCuadroVerde.center.x += 75
            self.vwCuadroVerde.center.y += 50
            
            self.vwCuadroVerde.backgroundColor = UIColor.orange
        })*/
        
        UIView.animate(withDuration: 1.0, delay: 2, options: [.repeat, .autoreverse, .curveEaseInOut], animations: {
            
            self.vwCuadroVerde.center =
                CGPoint(x: self.vwCuadroVerde.center.x + 50,
                        y: self.vwCuadroVerde.center.y + 75)
            
            self.vwCuadroVerde.transform =
                CGAffineTransform(rotationAngle: CGFloat(90.0 * M_PI / 180.0))
            self.vwCuadroVerde.transform =
                CGAffineTransform(scaleX: 2, y: 2)
            
            self.vwCuadroVerde.backgroundColor = UIColor.orange
        }, completion: nil)
        
        
        
        UIView.animate(withDuration: 5.0, animations: {
            self.lbMiTexto.center.x += self.view.bounds.width
            
            self.vwCuadroRosa.center.x += 90
            self.vwCuadroRosa.center.y -= 70
            
            self.vwCuadroRosa.transform =
                CGAffineTransform(scaleX: 0.2, y: 0.2)
            
            self.vwCuadroRosa.alpha = 1
            
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

