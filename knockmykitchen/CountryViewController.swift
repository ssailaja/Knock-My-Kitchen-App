//
//  CountryViewController.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/28/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import UIKit



class CountryViewController: UIViewController {
    
    var country:SortCountries?
    override func viewDidLoad() {
        super.viewDidLoad()
        countrylist.delegate = self
        countrylist.dataSource = self
    }
    
    @IBOutlet weak var countrylist: UITableView!

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeController = segue.destination as? RecipeViewController,let country = country {
            recipeController.recipeModel.filterdBy(country: country)
        }
    }
    
    
    
}

extension CountryViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SortCountries.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let countrycell = countrylist.dequeueReusableCell(withIdentifier: "countrycell", for: indexPath ) as? CountryCell,
        let country = SortCountries(rawValue: indexPath.row) else
        {
            return UITableViewCell()
            
        }
        
        
         countrycell.country.text = country.description
         countrycell.flagImageView.image = UIImage.init(named: country.imageName)
        
            return countrycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = SortCountries(rawValue: indexPath.row)
        self.country = country
        // use the raw value initializer on SortCountries using the indexPath.row
        // save that SortCountries on this class
        // call
       performSegue(withIdentifier: "recipesegue", sender: nil)
          //send that SortCountries object to RecipesViewController
    }
}

class CountryCell:UITableViewCell {
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var flagImageView: UIImageView!
    
}




