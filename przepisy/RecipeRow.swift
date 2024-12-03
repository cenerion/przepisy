//
//  RecipeRow.swift
//  przepisy
//
//  Created by stud on 03/12/2024.
//
import SwiftUI

struct RecipeRow: View {
    //var recipe: Recipe

    var body: some View {
        HStack {
            VStack{
                Text("Title")
                Text("Description")
            }
            Text("Hello, World!")
        }
    }
}


#Preview {
    RecipeRow(/*recipe: recipes[0]*/)
        .frame(height: 300)
        
}
