//
//  SouvenirsViewController.swift
//  segundo_parcial
//
//  Created by macbook on 07/05/18.
//  Copyright © 2018 GoMeVaPa. All rights reserved.
//

import UIKit

class SouvenirsViewController: UIViewController {

    @IBOutlet weak var s1: UITextField!
    @IBOutlet weak var s2: UITextField!
    @IBOutlet weak var code: UITextField!
    var promotion = 1.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buy(_ sender: Any) {
        if s1.text != "" && s2.text != "" {
            if code.text == VALID_CUPON{
                promotion = 0.5
            }else{
                if code.text != ""{
                let alert = UIAlertController(title: "Ups", message: "Tu cupon no es valiudo", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                }
            }
            if let cantidad1 = Int(s1.text!), let cantidad2 = Int(s2.text!){
                if cantidad1 + cantidad2 <= 10 {
                    let total = Double(cantidad1*300 + cantidad2*500)*promotion
                    performSegue(withIdentifier: "buySegue", sender: total)
                }else{
                    let alert = UIAlertController(title: "Ups", message: "máximo 10 articulos", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }else{
                let alert = UIAlertController(title: "Ups", message: "Ingresa solo números", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }else{
            let alert = UIAlertController(title: "Ups", message: "Rellena los campos", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? BuyViewController{
            if let total = sender as? Double {
                nextVC.totalPrice = total
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
