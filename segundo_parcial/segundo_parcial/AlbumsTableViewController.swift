//
//  AlbumsTableViewController.swift
//  segundo_parcial
//
//  Created by macbook on 07/05/18.
//  Copyright © 2018 GoMeVaPa. All rights reserved.
//

import UIKit

class AlbumsTableViewController: UITableViewController {
    var departamentos: [Departamento?] = [nil]
    override func viewDidLoad() {
        super.viewDidLoad()
        let producto1 = Producto(title: "Iphone",price: "52")
        let producto2 = Producto(title: "Iphone",price: "50")
        let producto3 = Producto(title: "Iphone",price: "75")
        
        let departamento1 = Departamento(title: "Electrónica", image: #imageLiteral(resourceName: "porcentaje") , productos: [producto1,producto2,producto3])
        
        let producto4 = Producto(title: "Iphone",price: "52")
        let producto5 = Producto(title: "Iphone",price: "50")
        let producto6 = Producto(title: "Iphone",price: "75")
        
        let departamento2 = Departamento(title: "Electrónica", image: #imageLiteral(resourceName: "porcentaje") , productos: [producto4,producto5,producto6])
        
        let producto7 = Producto(title: "Iphone",price: "52")
        let producto8 = Producto(title: "Iphone",price: "50")
        let producto9 = Producto(title: "Iphone",price: "75")
        
        let departamento3 = Departamento(title: "Electrónica", image: #imageLiteral(resourceName: "porcentaje") , productos: [producto7,producto8,producto9])
        
        let producto10 = Producto(title: "Iphone",price: "52")
        let producto11 = Producto(title: "Iphone",price: "50")
        let producto12 = Producto(title: "Iphone",price: "75")
        
        let departamento4 = Departamento(title: "Electrónica", image: #imageLiteral(resourceName: "porcentaje") , productos: [producto10,producto11,producto12])
        
        
        
        departamentos = [departamento1,departamento2,departamento3,departamento4]
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return departamentos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "albumCell", for: indexPath)
        cell.textLabel?.text = departamentos[indexPath.row]?.title
        cell.imageView?.image = departamentos[indexPath.row]?.image
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? AlbumDetailViewController{
            if let index = sender as? Int {
                nextVC.departamento = departamentos[index]
            }
        }
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
