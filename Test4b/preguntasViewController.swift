//
//  preguntasViewController.swift
//  Test4b
//
//  Created by  on 21/1/16.
//  Copyright © 2016 Marcos. All rights reserved.
//

import UIKit

struct Pregunta{
    var preg: String
    var r1: String
    var r2: String
    var r3: String
    var corr: String
}

class preguntasViewController: UIViewController {
    
    let arrayPreguntas: [Pregunta] =
        [
            Pregunta(preg: "Pregunta", r1: "Respuesta 1", r2: "Respuesta 2", r3: "Respuesta 3", corr: "Correcta")
        ]
    
    var contador = 0;
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var resp1: UILabel!
    @IBOutlet weak var resp2: UILabel!
    @IBOutlet weak var resp3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarPregunta(contador)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cargarPregunta(contador:Int){
        let p = arrayPreguntas[contador]
        question.text = p.preg
        resp1.text = p.r1
        resp2.text = p.r2
        resp3.text = p.r3
    }
    
    
    
    
    
    
    var solucion: [String] = ["a","b","c"]
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
