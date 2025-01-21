//
//  IngridientsFilterView.swift
//  przepisy
//
//  Created by stud on 21/01/2025.
//

import SwiftUI

struct IngridientsFilterView: View {
    let ing = ["czosnek", "papryka"]
    @State var selected: [String] = []
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(ing, id:\.self){ i in
                    SelectionCell(ingridient: i, selected: $selected)
                }
            }
            .navigationTitle("Featured")
            .searchable(text: $searchText)
        }
    }
}

struct SelectionCell: View {
    let ingridient: String
    @Binding var selected: [String]
    
    var body: some View {
        HStack{
            Text(ingridient)
            Spacer()
            if selected.contains(ingridient) {
                Image(systemName: "checkmark")
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            let heh = selected.firstIndex(of: ingridient)
            if heh != nil {
                self.selected.remove(at: heh!)
            }
            else{
                self.selected.append(ingridient)
            }
        }
    }
}

#Preview {
    IngridientsFilterView()
}
