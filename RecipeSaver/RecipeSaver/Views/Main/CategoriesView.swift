//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

//import Foundation

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){category in
                    NavigationLink{
                        CategoryView(category: category)
                        .navigationTitle("Categories")
                    }label:{
                        
                        Text(category.rawValue + "s")}
                }}
            .navigationTitle("Categories")
        }
        .padding()
        .navigationBarHidden(true) 
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .environmentObject(RecipesViewModel())
    }
}
