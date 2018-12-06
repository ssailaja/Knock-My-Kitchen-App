//
//  CountryViewController.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/28/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import UIKit



class CountryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        countrylist.delegate = self
        countrylist.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var countrylist: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vccontroller = segue.destination as? RecipeViewController else {
            return
        }
        // TODO: set navigation title to country name description
     
//        vccontroller.filteredRecipes = set this equal to recipes filtered by country, probably from a function on your model
    }
    
    
}

extension CountryViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SortCountries.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let countrycell = tableView.dequeueReusableCell(withIdentifier: "countrycell", for: indexPath ) as? CountryCell else
        {
            return UITableViewCell()
            
        }
        
        let country = SortCountries(rawValue: indexPath.row)?.description
        countrycell.countries.text = country
        
        return countrycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // update model, etc
        // call
//        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }
}

class CountryCell:UITableViewCell {
    
    
    @IBOutlet weak var countries: UILabel!
    
}




