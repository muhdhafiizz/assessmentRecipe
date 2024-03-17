import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = .main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    @State private var navigateToRecipe = false
    @EnvironmentObject var recipesVM: RecipesViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases, id: \.self) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .navigationBarTitle("Your Recipe", displayMode: .inline)
                       .navigationBarItems(
                           leading: Button(action: {
                               dismiss()
                           }) {
                               Label("Cancel", systemImage: "xmark")
                           },
                           trailing: Button(action: {
                               saveRecipe()
                               navigateToRecipe = true
                           }) {
                               Label("Done", systemImage: "checkmark")
                           }.disabled(name.isEmpty)
                       )
                       .sheet(isPresented: $navigateToRecipe) {
                           RecipeView(recipe: recipesVM.recipes.sorted { $0.datePublished > $1.datePublished }[0])
                               .navigationBarBackButtonHidden(true)
                       }
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true) 
        
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        print("----Saving receipt")
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, direction: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        
        print(recipe)
        
        
        recipesVM.addRecipe(recipe: recipe)
    }
}

