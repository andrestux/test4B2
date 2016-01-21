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
    
    let preguntas: [Pregunta] =
        [
            ("Pregunta", "Respuesta 1", "Respuesta 2", "Respuesta 3", "Respuesta 2"),
        ]
    
    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var resp1: UILabel!
    @IBOutlet weak var resp2: UILabel!
    @IBOutlet weak var resp3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resp1.text = "pene"
        resp2.text = "pito"
        resp3.text = "pilingui"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
