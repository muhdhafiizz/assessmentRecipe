//
//  NavBar.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

//import Foundation

import SwiftUI

struct NavBar: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        TabView{
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            NewRecipeView()
                .tabItem { Label("New", systemImage: "plus") }
            CategoriesView()
                .tabItem { Label("Categories", systemImage: "square.fill.text.grid.1x2") }
            SettingView()
                .tabItem { Label("Setting", systemImage: "gearshape") }
            
        }
    }
}

//#Preview {
//    NavBar()
//        .environmentObject(RecipesViewModel())
//}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
            .environmentObject(RecipesViewModel())
    }
}
