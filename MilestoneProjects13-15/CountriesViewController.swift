//
//  CountriesViewController.swift
//  MilestoneProjects13-15
//
//  Created by Антон Кашников on 18/11/2023.
//

import UIKit

final class CountriesViewController: UITableViewController {
    
    let countries = ["France", "Germany", "USA", "Russia"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Countries"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "countryCell")
    }


}

extension CountriesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        cell.accessoryType = .disclosureIndicator
        
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = countries[indexPath.row]
            cell.contentConfiguration = content
        } else {
            cell.textLabel?.text = countries[indexPath.row]
        }
        
        return cell
    }
}
