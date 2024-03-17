//
//  ContentView.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//



import SwiftUI

struct ContentView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        
            LoginView()
        
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
