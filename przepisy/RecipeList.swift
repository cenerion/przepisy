//
//  lista.swift
//  przepisy
//
//  Created by stud on 19/11/2024.
//

import SwiftUI

struct RecipeList: View {
    @State var searchText:String = ""
    @State var ingridientsFilter: [String] = []
    
    var body: some View {
        NavigationSplitView {
            NavigationLink{
                //IngridientsFilterView()
            } label: {
                Text("Filter")
            }
            
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
            IngridientsFilterView(selected: $ingridientsFilter)
        }
        
    }
}

#Preview {
    RecipeList()
}
