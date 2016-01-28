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
            Pregunta(preg: "¿A un herido en accidente de circulación, ¿es conveniente darle algún alimento o bebida?", r1: "No, aunque lo pida", r2: "Sí, es conveniente", r3: "Si, para mantener la temperatura del cuerpo", corr: "a"),
            Pregunta(preg: "Un conductor que se encuentre bajo los efectos del sueño...", r1: "Tarda más tiempo en reaccionar", r2: "Tarda menos tiempo en tomar decisiones", r3: "Reacciona más rápido que en condiciones normales", corr: "a"),
            Pregunta(preg: "El conductor de un vehículo no prioritario que se vea forzado a realizar un servicio de urgencia...", r1: "Está obligado a advertir su presencia con las señales de los vehículos prioritarios", r2: "Está obligado a respetar las normas y señales de circulación", r3: "No está obligado a respetar las normas de circulación, pero sí las señales", corr: "b"),
            Pregunta(preg: "Un turismo, ¿Puede circular por un carril para VAO?", r1: "No, este tipo de vehículos tiene el acceso prohibido a los carriles para VAO.", r2: "Sólo si está ocupado por el número de personas que se determine", r3: "Sí, aunque sólo lo ocupe su conductor", corr: "b"),
            Pregunta(preg: "El titular de un permiso  de la clase A2, con antigüedad de un año, que acaba de obtener el de la clase B, no podrá superar una tasa de alcoholemia de...", r1: "0,30 gramos de alcohol por litro de sangre, durante los dos siguientes años", r2: "0,5g de alcohol por litro de sangre", r3: "0,30 gramos de alcohol por litro de sangre, durante el siguiente año", corr: "c"),
            Pregunta(preg: "Los accidentes de tráfico, ¿Causan costes administrativos?", r1: "No, sólo causan costes humanos", r2: "Sí, entre otros de policía y bomberos", r3: "No, solo materiales", corr: "b"),
            Pregunta(preg: "En un camión de longitud superior a 5 metros, una carga indivisible no podrá sobresalir más de...", r1: "3 metros por delante y 2 por detrás", r2: "2 metros por delante y 3 metros por detrás", r3: "Un tercio del vehículo por delante y un tercio por detrás", corr: "b"),
            Pregunta(preg: "Una motocicleta que arrastra un remolque, ¿puede transportar una persona en él?", r1: "Sí, si se trata de un niño mayor de 7 años", r2: "No, en ningun caso", r3: "Sí, igual que si se tratara de un sidecar", corr: "b"),
            Pregunta(preg: "Una enfermedad respiratoria, sin el debido tratamiento, ¿Qué puede causar en el conductor?", r1: "Aumento de la concentración", r2: "Aumento de la atención", r3: "Pérdida de atención y de concentración", corr: "c"),
            Pregunta(preg: "En los días de mucho viento es recomendable circular con las ventanillas...", r1: "Abiertas, para ventilar el vehículo", r2: "Cerradas, para evitar que entre polvo o algún objeto inesperado", r3: "Abiertas o cerradas, es indiferente", corr: "b")
        ]
    var arrayRespuestas: [String] = ["","","","","","","","","",""]
    
    var contador = 0;
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var resp1: UILabel!
    @IBOutlet weak var resp2: UILabel!
    @IBOutlet weak var resp3: UILabel!
    @IBOutlet weak var botonA: UIButton!
    @IBOutlet weak var botonC: UIButton!
    @IBOutlet weak var botonB: UIButton!
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var boton4: UIButton!
    @IBOutlet weak var boton5: UIButton!
    @IBOutlet weak var boton6: UIButton!
    @IBOutlet weak var boton7: UIButton!
    @IBOutlet weak var boton8: UIButton!
    @IBOutlet weak var boton9: UIButton!
    @IBOutlet weak var boton10: UIButton!
    
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
        
        resetOpciones()
        
        if(arrayRespuestas[contador] != ""){
            switch(arrayRespuestas[contador]){
                case "a":
                    botonA.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                    break;
                case "b":
                    botonB.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                    break;
                case "c":
                    botonC.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                    break;
                default:
                    let alert = UIAlertController(title: "Error no controlado", message: "Lo sentimos.", preferredStyle: UIAlertControllerStyle.Alert)
                    alert.addAction(UIAlertAction(title: "Regresar", style: UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                
            }
        }
        
        toBlack()
        
        switch(contador){
            case 0:
                boton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 1:
                boton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 2:
                boton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 3:
                boton4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 4:
                boton5.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 5:
                boton6.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 6:
                boton7.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 7:
                boton8.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 8:
                boton9.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            case 9:
                boton10.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
                break;
            default:
                break;
        }
    }
    
    func resetOpciones(){
        botonA.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        botonB.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        botonC.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    }
    
    func toBlack(){
        boton1.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton2.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton3.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton4.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton5.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton6.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton7.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton8.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton9.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        boton10.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    }
    
    @IBAction func siguientePregunta(sender: AnyObject) {
        if(contador < arrayPreguntas.count - 1){
            contador++;
            cargarPregunta(contador)
        }
    }
    
    @IBAction func anteriorPregunta(sender: AnyObject) {
        if(contador > 0){
            contador--;
            cargarPregunta(contador)
        }
    }
    
    @IBAction func seleccionA(sender: AnyObject) {
        //Primero meter la respuesta en el indice correspondiente, meter la a obviamente y ejecutar siguientepregunta
        arrayRespuestas[contador] = "a"
        nextQuestion();
    }
    
    @IBAction func seleccionB(sender: AnyObject) {
        arrayRespuestas[contador] = "b"
        nextQuestion()
    }
    
    @IBAction func seleccionC(sender: AnyObject) {
        arrayRespuestas[contador] = "c"
        nextQuestion()
    }
    
    func nextQuestion(){
        if(contador < arrayPreguntas.count - 1){
            contador++;
            cargarPregunta(contador)
        }
    }
    
    @IBAction func irPregunta1(sender: AnyObject) {
        contador = 0
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta2(sender: AnyObject) {
        contador = 1
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta3(sender: AnyObject) {
        contador = 2
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta4(sender: AnyObject) {
        contador = 3
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta5(sender: AnyObject) {
        contador = 4
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta6(sender: AnyObject) {
        contador = 5
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta7(sender: AnyObject) {
        contador = 6
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta8(sender: AnyObject) {
        contador = 7
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta9(sender: AnyObject) {
        contador = 8
        cargarPregunta(contador)
    }
    
    @IBAction func irPregunta10(sender: AnyObject) {
        contador = 9
        cargarPregunta(contador)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var contadorAciertos = 0
        var correcto = false
        var arrayPreguntasCorregida : [Bool] = []
        let destino = segue.destinationViewController as! resultadosViewController
        
        for x in 0...arrayRespuestas.count - 1{
            correcto = false
            if(arrayRespuestas[x] == arrayPreguntas[x].corr){
                contadorAciertos++;
                correcto = true
            }
            arrayPreguntasCorregida.append(correcto)
        }
        
        destino.resultado = String(contadorAciertos)
        destino.preguntasCorregidas = arrayPreguntasCorregida
    }
    

}
