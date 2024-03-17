////
////  NewRecipe.swift
////  RecipeSaver
////
////  Created by 2QAlliance on 16/03/2024.
////
////
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

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        VStack {
            NavigationView {
                Button("Add recipe"){
                    showAddRecipe = true
                }
                .navigationTitle("New Recipe")
            }
            .sheet(isPresented: $showAddRecipe) {
                AddRecipeView()
            }
        }
        .padding()
        .navigationBarHidden(true) 
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

