//
//  asdfsadf.swift
//  Career_app
//
//  Created by Simonchik on 28.05.2024.
//

import SwiftUI

struct asdfsadf: View {
    
    @State private var items: [String] = []
    @State private var newItem = ""
    
    
    func addItem() {
            if !newItem.isEmpty {
                items.append(newItem)
                newItem = ""
            }
        }
    func toggleItem(at index: Int) {
            if items[index].contains("✅") {
                items[index] = items[index].replacingOccurrences(of: "✅", with: "")
            } else {
                items[index] = "✅ " + items[index]
            }
        }

        // Function to Delete an Item
    func deleteItem(at offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
    
    var body: some View {
        
        
        
        
        
        VStack {
                       // Input Field for Adding New Items
                       HStack {
                           TextField("Add new item", text: $newItem)
                               .padding()
                               .background(Color(UIColor.systemGray6))
                               .cornerRadius(10)
                           Button(action: {
                               addItem()
                           }) {
                               Image(systemName: "plus.circle.fill")
                                   .foregroundColor(.blue)
                           }
                       }
                       .padding()

                       // List of Checklist Items
                       List {
                           ForEach(items.indices, id: \.self) { index in
                               HStack {
                                   Image(systemName: items[index].contains("✅") ? "checkmark.circle.fill" : "circle")
                                       .onTapGesture {
                                           toggleItem(at: index)
                                       }
                                   Text(items[index])
                               }
                           }
                           .onDelete(perform: deleteItem)
                       }
                       .navigationTitle("Checklist")
                   }
               }
           }

    

#Preview {
    asdfsadf()
}
