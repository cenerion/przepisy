//
//  lista.swift
//  przepisy
//
//  Created by stud on 19/11/2024.
//

import SwiftUI

struct lista: View {
    var body: some View {
        NavigationSplitView {
            Text("Landmarks Content")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    lista()
}
