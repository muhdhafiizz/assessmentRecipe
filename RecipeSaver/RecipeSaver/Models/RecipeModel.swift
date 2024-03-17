//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by 2QAlliance on 16/03/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String{self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url:String
}

extension Recipe{
    static let all: [Recipe] = [
    Recipe(name: "Butter Prawn", image: "https://www.mysugarfreekitchen.com/wp-content/uploads/2020/04/butter-prawns-square.jpg", description: "Butter Prawn is a Malaysian recipe that is buttery, salty, sweet, spicy, and garlicky. The main ingredients are prawn, butter, grated coconut and curry leaves.", ingredients: "1 lb (500g) prawn, for example: tiger prawn 1 tablespoon oil, 3 tablespoons unsalted butter, 3 cloves garlic (finely chopped), 3 sprigs curry leaves (use only the leaves), 1-2 small bird's eye chilies (pounded, optional), 1 tablespoon oyster sauce, 1 tablespoon Chinese cooking wine (rice wine preferred), 1 teaspoon sugar, 3 dashes ground black pepper and 6 tablespoons grated coconut (dry fried until golden brown)", direction: "Prawn preparation demands precision: retain heads and shells, removing eyes while snipping legs and slitting to rid veins. Pan-fry prawns until shells whiten, maintaining partial cooking. In a skillet, sizzle butter, garlic, curry leaves, and bird's eye chilies, infusing aroma. Add prawns, oyster sauce, wine, sugar, black pepper, and grated coconut, intensifying flavors over high heat. This meticulous process yields a symphony of tastes and textures, each bite a harmonious blend of indulgence. The perfected prawn dish stands as a testament to culinary finesse, offering a tantalizing journey of gastronomic delight in every savory morsel.", category: "Side", datePublished: "2021-05-21", url: "https://rasamalaysia.com/butter-prawn/"),
    Recipe(name: "Banana Cake", image: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/CFAF19B6-E93F-4727-8BCB-6F94E6A541AE/Derivates/3fe4f7ba-228b-4ffb-aaa4-16406bc82030.jpg", description: "This is the best and moist banana cake from scratch. Easy banana cake recipe with six (6) ingredients. Fail-proof, light, fluffy and you can make it at home!", ingredients: "Overripe bananas, Flour, Sugar, Eggs, Butter", direction: "First, preheat your oven to 375 degrees Fahrenheit and grease a baking pan. While the oven heats up, mash the bananas in a bowl. In a separate bowl, whisk together the flour and baking powder. Next, using a mixer, beat the eggs and sugar on medium speed until foamy. Then, increase the speed to high and continue beating for about three minutes, until the mixture becomes light and fluffy. Gently fold the mashed bananas and melted butter into the egg mixture. Gradually incorporate the dry ingredients (flour mixture) into the wet mixture, alternating with the addition of the remaining melted butter. Be sure to fold everything gently until just combined to avoid overmixing. Pour the batter into the greased baking pan and bake for 40-50 minutes, or until a toothpick inserted into the center comes out clean. Let the cake cool completely on a wire rack before serving.", category: "Dessert", datePublished: "2023-08-24", url: "https://rasamalaysia.com/banana-cake/"),
    Recipe(name: "Watermelon-Lime Agua Fresca", image: "https://iowagirleats.com/wp-content/uploads/2015/06/Watermelon-Agua-Fresca-iowagirleats-11-srgb.jpg", description: "Refreshing summertime drink that you can enjoy the entire season. Made with watermelon, lime and syrup! This beverage is all you need to beat the heat.", ingredients: "Ripe and seedless watermelon, a cup of cold water, 1 tablespoon of lime juice and 1 tablespoon of agave nectar", direction: "Blend all ingredients, adjusting sweetness as needed. Strain through a mesh strainer. Serve over ice.", category: "Drink", datePublished: "2018-06-23", url: "https://rasamalaysia.com/watermelon-lime-agua-fresca/")]
}
