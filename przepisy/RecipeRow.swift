//
//  RecipeRow.swift
//  przepisy
//
//  Created by stud on 03/12/2024.
//
import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe

    var body: some View {
        HStack{
            recipe.images[0]
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(recipe.name)
            
            Spacer()
        }
    }
}


#Preview {
    NavigationLink{
        RecipeRow(recipe: recipes[0])
    } label: {
        RecipeRow(recipe: recipes[0])
    }
        
}
