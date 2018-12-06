//
//  recipe.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 11/7/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//

import Foundation
class RecipeClient{
    func downloadRecipes(completion: @escaping ([String:Any])->()) {
        let url = URL.init(string: "https://www.food2fork.com/api/search?key=1a299a6425ee18228c4fbb7163e532eb&q=shredded%20chicken")!
        var request = URLRequest.init(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: url) { data,response, error in
            print(data)
            if let data = data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data,
                                                                   options: JSONSerialization.ReadingOptions.init(rawValue: 0)) as? [String:Any] {
                        print(json)
                        completion(json)
                    }
                } catch {
                    
                }
            }
        }
        task.resume()
    }
}
