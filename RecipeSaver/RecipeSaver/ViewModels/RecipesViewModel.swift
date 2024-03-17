//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []

    init() {
        recipes = Recipe.all
    }

    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
        print("Recipe added:", recipe)
    }
}

