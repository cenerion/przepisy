//
//  lista.swift
//  przepisy
//
//  Created by stud on 19/11/2024.
//

import SwiftUI

struct RecipeList: View {
    @State var searchText:String = ""
    
    var body: some View {
        NavigationSplitView {
            Text("Content")
            List(recipes) { recipe in
                NavigationLink{
                    RecipeDetail(recipe: recipe)
                } label: {
                    RecipeRow(recipe: recipe)
                }
                
            }
            .navigationTitle("Featured")
            .searchable(text: $searchText)
            
        } detail: {
            Text("Select a Recipe")
        }
        
    }
}

#Preview {
    RecipeList()
}
