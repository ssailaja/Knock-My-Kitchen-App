//
//  RecipeViewController.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/30/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    let recipeModel = RecipesModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipelist.delegate = self
        recipelist.dataSource = self
    }
    
    @IBOutlet weak var recipelist: UITableView!
    
    

    }
    
extension RecipeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of dummyrecipes in filteredRecipes
        return recipeModel.filteredRecipes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let recipecell = tableView.dequeueReusableCell(withIdentifier: "recipecell", for: indexPath ) as? RecipeCell else
        {
            return UITableViewCell()
        }
        
        // save on recipecell all the data necessary from the above dummyrecipe we pulled out of the filteredrecipe array
        
        
        let recipeAtRow = recipeModel.filteredRecipes[indexPath.row]
        recipecell.name.text = recipeAtRow.name
        recipecell.desc.text = recipeAtRow.description
        return recipecell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // update model, etc
        // call
        //        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }
}

class RecipeCell:UITableViewCell {
    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    
}
/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */



