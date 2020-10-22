//
//  TableViewController.swift
//  CarListApp
//
//  Created by Michal Pietrzak on 22/10/2020.
//

import UIKit

class TableViewController: UITableViewController {
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)


        return cell
    }
    
}
