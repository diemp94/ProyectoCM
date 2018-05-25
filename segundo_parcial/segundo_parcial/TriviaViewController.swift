//
//  TriviaViewController.swift
//  segundo_parcial
//
//  Created by macbook on 07/05/18.
//  Copyright © 2018 GoMeVaPa. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var q1: UILabel!
    @IBOutlet weak var q2: UILabel!
    @IBOutlet weak var q3: UILabel!
    @IBOutlet weak var q4: UILabel!
    @IBOutlet weak var q5: UILabel!
    
    @IBOutlet weak var a1: UISwitch!
    @IBOutlet weak var a2: UISwitch!
    @IBOutlet weak var a3: UISwitch!
    @IBOutlet weak var a4: UISwitch!
    @IBOutlet weak var a5: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        q1.text = "Los Ángeles Azules se reunirían con Juan Gabriel el dia de su fallecimiento para un posible dueto"
        q2.text = "Tras el lanzamiento de “De plaza en plaza” se colocaron en la lista de lo más escuchado en iTunes de estados unidos en tercer lugar."
    q3.text = "El dueto con Ha*Ash, interpretando “Mi niña mujer”, fue un exitazo en YouTube. Es el sencillo más visto en la plataforma de videos y supera las 7 millones de reproducciones."
        q4.text = " ¡“De plaza en plaza” vibra con 13 éxitos que han sonado desde 1987 en adelante!"
        q5.text = "Los Ángeles azules han cantado en dueto con Miguel Bosé."
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindTrivia(segue:UIStoryboardSegue){
        
    }
    @IBAction func check(_ sender: Any) {
        if ((a1.isOn == true) && (a2.isOn == false) && (a3.isOn == true) && (a4.isOn == false) && (a5.isOn == true)) {
            performSegue(withIdentifier: "correctTriviaSegue", sender: self)
        }else{
            performSegue(withIdentifier: "incorrectTriviaSegue", sender: self)
        }
    }
    
}
