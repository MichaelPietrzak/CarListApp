//
//  TableViewController.swift
//  CarListApp
//
//  Created by Michal Pietrzak on 22/10/2020.
//

import UIKit

class TableViewController: UITableViewController {
    
    var cars = [String]()
    
    let backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Premium Cars"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasSuffix("3x.png") {
                cars.append(item)
                cars.sort()
            }
        }
        print(cars)
        
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "CarTableViewCell", bundle: nil), forCellReuseIdentifier: "CarTableViewCell")
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as! CarTableViewCell
        
        let carName = cars[indexPath.row]
        
        cell.carNameLabel?.text = carName.replacingOccurrences(of: "@3x.png", with: "")
        cell.carView?.image = UIImage(named: carName)
        
        cell.backgroundColor = backgroundColor
        cell.selectionStyle = .none
        
        return cell
    }
}
