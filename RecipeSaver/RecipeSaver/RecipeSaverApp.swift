//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
