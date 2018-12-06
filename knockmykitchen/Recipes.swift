//
//  Recipes.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 12/3/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import UIKit

class RecipesModel {
     var recipes = [DummyRecipe]()
    
    init () {
        let recipes = Generator.generateRecipe(1000)
        self.recipes = recipes
    }
    
    
    func sortBy(country: SortCountries) -> [DummyRecipe] {
    
        // (in order to finish prepare for segue)
        // you need to NOT change the data in self.recipes.
        // BUT you need to take that data, and filter it.
        // return recipes where the dummyRecipe.country == country.description
        // OR? save it on the model and change this function to not return it. YOUR CHOICE.
     
        return []
    }
}

class Recipes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
