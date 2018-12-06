//
//  RecipeViewController.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/30/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    var filteredRecipes = [DummyRecipe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let recipe = RecipesModel()
        filteredRecipes = recipe.recipes
        // Do any additional setup after loading the view.
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
