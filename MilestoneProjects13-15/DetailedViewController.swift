//
//  DetailedViewController.swift
//  MilestoneProjects13-15
//
//  Created by Антон Кашников on 18/11/2023.
//

import UIKit

final class DetailedViewController: UIViewController {
    @IBOutlet private var regionLabel: UILabel!
    @IBOutlet private var areaLabel: UILabel!
    @IBOutlet private var capitalLabel: UILabel!
    @IBOutlet private var populationLabel: UILabel!
    
    var countryTitle = ""
    var region = ""
    var area = ""
    var capital = ""
    var population = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        title = countryTitle
        regionLabel.text = region
        areaLabel.text = area
        capitalLabel.text = capital
        populationLabel.text = population
    }
}
