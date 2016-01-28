//
//  resultadosViewController.swift
//  Test4b
//
//  Created by Marcos on 28/01/16.
//  Copyright © 2016 Marcos. All rights reserved.
//

import UIKit

class resultadosViewController: UIViewController {

    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    
    var resultado = ""
    var preguntasCorregidas: [Bool] = []
    
    override func viewDidLoad() {
        var botonesVista: [UIButton] = [b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]
        super.viewDidLoad()
        lbResultado.text = resultado
        for x in 0...preguntasCorregidas.count-1{
            azulrojo(botonesVista[x],isOk: preguntasCorregidas[x])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func azulrojo(btn: UIButton, isOk: Bool){
        if(isOk){
            btn.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        }
        else{
            btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        }
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
