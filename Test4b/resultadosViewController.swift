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
    var resultado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbResultado.text = resultado
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
