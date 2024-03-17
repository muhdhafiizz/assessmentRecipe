//
//  HomeView.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

//import Foundation
//
//  ContentView.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

//import Foundation
//
//  ContentView.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
            NavigationView {
                ScrollView{
                    RecipeList(recipes: recipesVM.recipes)
                }
                .navigationTitle("My Recipes")
            }
            .navigationViewStyle(.stack)
            .navigationBarHidden(true) 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
