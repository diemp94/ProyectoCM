//
//  BuyViewController.swift
//  segundo_parcial
//
//  Created by macbook on 07/05/18.
//  Copyright © 2018 GoMeVaPa. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {
    var totalPrice:Double = 0
    
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        total.text = "$"+String(totalPrice)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
