//
//  RecipeDetail.swift
//  przepisy
//
//  Created by stud on 03/12/2024.
//
import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            ForEach(0..<recipe.images.count, id: \.self) {idx in
                recipe.images[idx]
                    .frame(height: 300)
            }
            
            Text(recipe.name)
            Text(recipe.description)
            
            ForEach(recipe.ingridients, id: \.self) { ingridient in
                Text(ingridient.name)
            }
            
            ForEach(recipe.comments, id: \.self) { comment in
                Text(comment.username)
                Text(comment.content)
            }
        }
    }
}

#Preview {
    RecipeDetail(recipe: recipes[0])
}
