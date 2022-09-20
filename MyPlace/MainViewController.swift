//
//  ViewController.swift
//  MyPlace
//
//  Created by Fill on 20.09.22.
//

import UIKit

class MainViewController: UIViewController {
    
    
    let arrayMyPlaces = ["McDonald's","KFC","Mammo","Union","Venecia"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMyPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = arrayMyPlaces[indexPath.row]
        cell?.imageView?.image = UIImage(named:arrayMyPlaces[indexPath.row])
        
        return cell!
    }
    
    
    
}
