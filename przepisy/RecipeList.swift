//
//  lista.swift
//  przepisy
//
//  Created by stud on 19/11/2024.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
        NavigationSplitView {
            Text("Content")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Recipe")
        }
    }
}

#Preview {
    RecipeList()
}
