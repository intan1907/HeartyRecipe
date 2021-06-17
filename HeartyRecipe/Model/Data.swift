//
//  Data.swift
//  HeartyRecipe
//
//  Created by Intan Nurjanah on 03/06/21.
//

import Foundation

var recipeData: [RecipeBaseClass]? = loadJson()

// load dummy data from json file
func loadJson(fileName: String = "Recipes") -> [RecipeBaseClass]? {
    let decoder = JSONDecoder()
    guard
        let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
        let data = try? Data(contentsOf: url)
    else { /* Insert error handling here */
        print("file not found atau data nil")
        return []
    }

    var result: [RecipeBaseClass] = []
    do {
        result = try decoder.decode([RecipeBaseClass].self, from: data)
    } catch {
        // I find it handy to keep track of why the decoding has failed. E.g.:
        print(error)
        // Insert error handling here
    }
    return result
}
